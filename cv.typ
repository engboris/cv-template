#import "icons.typ": *

/* ==============================================
   Style functions
   ============================================== */

#let sepline(color) = {
  v(-12pt);
  line(length: 100%, stroke: color);
  v(3pt)
}

/* ==============================================
   CV constructors
   ============================================== */
   
#let cv_block(title: "", year: "", subtitle: "", place:"", description: "") = {
  grid(
    columns: (1fr, auto),
    rows: 1em,
    gutter: 4pt,
    [*#title*],
    year,
    text(black.lighten(40%), subtitle),
    align(right)[#place]
  )
  v(-8pt)
  text(weight: "light", size: 11pt, description)
}

#let cv_list(..content) = {
  grid(
    columns: (30em, 1fr, auto),
    rows: 1em,
    gutter: 4pt,
    ..content
  )
}

#let cv_item(title, description) = {
  [*#title* #h(3pt) #description]
  h(2em)
}

/* ==============================================
   Project configuration
   ============================================== */
   
#let project(
  title: "",
  firstname: "",
  familyname: "",
  website: "",
  email: "",
  github: "",
  phone: "",
  main_color: black,
  layout_type: "compact",
  body) = {

  /* -----------------------------------
     Header
     ----------------------------------- */
  set page(margin: (left: 12mm, right: 12mm, top: 12mm, bottom: 12mm))
  set text(font: "IBM Plex Sans", lang: "en")
  let title_size = 35pt;

  show heading.where(level: 1): it => text(
    size: 12pt,
    weight: "semibold",
    fill: main_color,
    block(it + sepline(main_color))
  )

  let full_name = {
    align(left)[
      #text(title_size)[
        *#text(fill: main_color, title_size)[#firstname] #familyname*
    ]]
  }

  let info_compact = {
    grid(
      columns: (120pt, 150pt),
      rows: (15pt, auto),
      gutter: 1pt,
      [#fa(fa_email) #h(2pt) #email],
      [#fa(fa_phone) #h(2pt) #phone],
      [#fa(fa_website) #h(2pt) #link(website)],
      [#fa(fa_github) #h(2pt) #link(github)]
    )
  }

  let info_extended = {
      [#fa(fa_email) #h(2pt) #email #h(2em)]
      [#fa(fa_phone) #h(2pt) #phone #h(2em)]
      [#fa(fa_website) #h(2pt) #link(website) #h(2em)]
      [#fa(fa_github) #h(2pt) #link(github)]
  }

  if layout_type == "extended" {
    full_name
    v(-2.5em)
    text(weight: "light", 10pt, black.lighten(10%), info_extended)
    v(0em)
  }
  else {
    grid(
      columns: (230pt, 200pt),
      rows: (25pt),
      gutter: 3pt,
      full_name,
      text(weight: "light", 10pt, black.lighten(10%), info_compact)
    )
  }

  text(black.lighten(40%), weight: "semibold", 14pt, title)

  v(1em)

  /* -----------------------------------
     Main content
     ----------------------------------- */

  body
}