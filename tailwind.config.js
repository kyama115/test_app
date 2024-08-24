module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],
  theme: {
    extend: {
      width: {
        '1280': '1280px', // 幅1280pxのカスタムクラス
      },
      height: {
        '720': '720px', // 高さ720pxのカスタムクラス
      }
    }
  },
  plugins: [require("daisyui")],
  daisyui: {
    darkTheme: false
  },
}
