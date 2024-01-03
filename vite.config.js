import imba from 'imba/plugin';
import { defineConfig } from 'vite';

export default defineConfig({
	plugins: [imba()],
  base: '/qasem-soleimani/',
  build: {
    assetsDir: './',
    outDir: 'docs/'
  }
});
