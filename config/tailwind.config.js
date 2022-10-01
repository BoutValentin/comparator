const defaultTheme = require("tailwindcss/defaultTheme");

module.exports = {
  content: [
    "./public/*.html",
    "./app/helpers/**/*.rb",
    "./app/javascript/**/*.js",
    "./app/views/**/*.{erb,haml,html,slim}",
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ["Inter var", ...defaultTheme.fontFamily.sans],
      },
      keyframes: {
        grow: {
          "0%": { width: "0%", "background-color": "transparent" },
          "30%": { "background-color": "transparent" },
          "100%": { width: "100%", "background-color": "black" },
        },
      },
      animation: {
        grow: " 0.25s ease-in 0s 1 normal forwards running grow",
      },
    },
  },
  plugins: [
    require("@tailwindcss/forms"),
    require("@tailwindcss/aspect-ratio"),
    require("@tailwindcss/typography"),
  ],
};
