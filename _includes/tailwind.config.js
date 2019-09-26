const defaultTheme = require("tailwindcss/defaultTheme");
const filteredFonts = defaultTheme.fontFamily.sans.filter(
  font => font !== '"Apple Color Emoji"'
);
console.log({ filteredFonts });
module.exports = {
  theme: {
    maxWidth: {
      //based on 0.7
      xs: "20rem",
      sm: "30rem",
      md: "40rem",
      lg: "50rem",
      xl: "60rem",
      "2xl": "70rem",
      "3xl": "80rem",
      "4xl": "90rem",
      "5xl": "100rem",
      full: "100%"
    },
    fontFamily: {
      headlines: [
        "Rubik",
        "Constantia",
        "Lucida Bright",
        "Lucidabright",
        "Lucida Serif",
        "Lucida",
        "DejaVu Serif",
        "Bitstream Vera Serif",
        "Liberation Serif",
        "Georgia",
        "serif"
      ]
    },
    extend: {
      fontFamily: {
        sans: [...filteredFonts]
      }
    }
  },
  variants: {},
  plugins: []
};
