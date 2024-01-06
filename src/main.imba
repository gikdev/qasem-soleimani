import './styles/main.scss'
import './list.imba'

tag app
	currentURL = ""
	navVisible = true

	def reloadVideo(e) do 
			currentURL =  e.target.currentURL
			navVisible = false
	def toggleNav do navVisible = !navVisible
	
	<self#app>
		<nav.nav>
			<p.nav__item.nav__item--logo> "حاج قاسم"
			<button#toggle-aside-btn.nav__item @click=toggleNav> "لیست ویدیوها"
			<a.nav__item href="https://eitaa.com/wd_bahrami/"> "سازنده"
		<main>
			<list.visible=navVisible @onItemClick=reloadVideo>
			<section.video__container>
				if currentURL 
					# <video.video autoplay controls loop src=currentURL> 
					<iframe.video src=currentURL> 
				else
					<div.message> "هنوز ویدیویی انتخاب نکردی!"

imba.mount <app>