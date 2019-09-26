const defaultTheme = require("tailwindcss/defaultTheme");
const filteredFonts = defaultTheme.fontFamily.sans.filter(
  font => font !== '"Apple Color Emoji"'
);
module.exports = {
  theme: {
    fontFamily: {
      headlines: ["Rubik", ...filteredFonts]
    },
    extend: {
      fontFamily: {
        sans: filteredFonts
      }
    }
  },
  variants: {},
  plugins: []
};
