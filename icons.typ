#let fa(name) = {
  text(
    font: "Font Awesome 6 Free Solid",
    size: 11pt,
    box[ #name ]
  )
}

/* To add new icons, go to https://fontawesome.com/ then search for the   
   unicode value of your icon.
 */

#let fa_github = symbol("\u{f09b}")
#let fa_email = symbol("\u{f0e0}")
#let fa_website = symbol("\u{f0ac}")
#let fa_phone = symbol("\u{f098}")
#let fa_linkedin = symbol("\u{f08c}")