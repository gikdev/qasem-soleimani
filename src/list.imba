tag list
	prop currentURL = ""
	prop vids = [
		{
			name: "نماهنگ قاف الف سین میم"
			url: "https://www.aparat.com/video/video/embed/videohash/bClEG/vt/frame"
		}
		{
			name: "سرود عقیق جامانده"
			url: "https://www.aparat.com/video/video/embed/videohash/ehgMo/vt/frame"
		}
		{
			name: "نماهنگ ابرمرد شجاع"
			url: "https://www.aparat.com/video/video/embed/videohash/BWIjC/vt/frame"
		}
		{
			name: "نماهنگ شکوه فتح"
			url: "https://www.aparat.com/video/video/embed/videohash/x7dt1/vt/frame"
		}
		{
			name: "نماهنگ سردار سلام"
			url:  "https://www.aparat.com/video/video/embed/videohash/l61Ao/vt/frame"
		}
		{
			name: "نماهنگ افتخار ما"
			url: "https://www.aparat.com/video/video/embed/videohash/p1MNL/vt/frame"
		}
		{
			name: "نماهنگ ضربان حرم"
			url:  "https://www.aparat.com/video/video/embed/videohash/RAcUw/vt/frame"
		}
		{
			name: "سرود فرمانده دلها"
			url:  "https://www.aparat.com/video/video/embed/videohash/w1Pg9/vt/frame"
		}
	]

	def onClick i do
		currentURL = vids[i].url
		emit('onItemClick')

	<self.aside>
		for vid, i in vids
			<a.aside__item href=vid.url @click.prevent=onClick(i)> vid.name