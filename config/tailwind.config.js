const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    colors: {
      // Primary
      'primary': '#8378DF',
      'light_purple': '#E8E6F6',

      // Secondary
      'seafoam': '#80D3AA',
      'electric_teal': '#E9FFF4',
      'pink-elephant': '#EF9DE0',
      'light_pink': '#FFF0FC',

      // States
      'fountain_green': '#37CCB2',
      'red_punch': '#EA343E',
      'yellow_orange': '#FEBB5A',
      'grey': '#EFF2F7',

      // Text
      'second_grey': '#1F2D3D',
      'white': '#FFFFFF',

      // Shades of greys
      'three_grey':'#3C4858',
      'four_grey':'#8492A6',
      'five_grey':'#C2CEDB',
      'six_grey':'#D3DCE6',
      'seven_grey':'#E5E9F2',
      'eigth':'#EFF2F7',
      'nine':'#F9FAFC',
      // Extra
      'medium_blue': '#0782D0',
      'dark_blue': '#113C7B',
      'salmon':'#FC8383',
    },
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
  ]
}
