#import "cv.typ": *

#show: project.with(
  title: lorem(10),
  
  firstname: "First",
  familyname: "Second",
  
  website: "www.website.net",
  email: "name@email.com",
  github: "https://github.com/username",
  phone: "+00 0 00 00 00 00",

  /* layout_type is either "compact" (default) or "extended"
     for longer names */
  layout_type: "compact",
  main_color: eastern,
)

= Formation

#cv_list(
  [*PhD in Computer Science*],
  [Université Paris 13],
  [2019--2023],
  [*Master Parisien de Recherche en Informatique (MPRI)*],
  [Université Paris 7],
  [2018–2019],
  [*Bachelor in Computer Science*],
  [Université Paris 7],
  [2016--2017]
)

= Experience

#cv_block(
  title: [Put a title here],
  year: [Date--Date],
  subtitle:[Put a subtitle here],
  place: [Some place],
  description: [#lorem(40)]
)

#cv_block(
  title: [Put a title here],
  year: [Date--Date],
  subtitle:[Put a subtitle here],
  place: [Some place],
  description: [#lorem(40)]
)

#cv_block(
  title: [Put a title here],
  year: [Date--Date],
  subtitle:[Put a subtitle here],
  place: [Some place],
  description: [#lorem(40)]
)

#cv_block(
  title: [Put a title here],
  year: [Date--Date],
  subtitle:[Put a subtitle here],
  place: [Some place],
  description: [#lorem(40)]
)

= Skills

#cv_item([Programming], [OCaml, Coq, C/C++, Java, Python])
#cv_item([Project management], [Git, SVN])

#cv_item([Web development], [HTML, CSS, Jekyll, Hugo])
#cv_item([Typesetting], [LaTeX, Typst])

= Languages

#cv_item([French], [Native language])
#cv_item([English], [Professional proficiency])
#cv_item([Japanese], [Professional proficiency])

#cv_item([Italian], [Professional proficiency])
#cv_item([Spanish], [Professional proficiency])

= Hobbies

#lorem(15)