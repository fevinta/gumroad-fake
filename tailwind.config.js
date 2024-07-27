/** @type {import('tailwindcss').Config} */
export default {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.{js,jsx,ts,tsx,svelte,vue}',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}