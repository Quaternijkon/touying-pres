// #import "@preview/touying:0.6.1": *
#import "../../theme.typ":*

#import "@preview/numbly:0.1.0": numbly

#show: touying-pres.with(
  aspect-ratio: "16-9",
  config-info(
    title: [Stargazer in Touying: Customize Your Slide Title Here],
    subtitle: [Customize Your Slide Subtitle Here],
    author: [Authors],
    date: datetime.today(),
    institution: [Institution],
    logo: image("../../asset/ustc_text.svg"),
    logo-round: image("../../asset/ustc_logo.svg",width: 15%),
  ),
  config-colors(
    primary: rgb("#004098"),
    primary-dark: rgb("#004098").darken(20%),
    secondary: rgb("#004098"),
    secondary-dark: rgb("#004098").darken(20%),
  ),
)

#set heading(numbering: numbly("{1}.", default: "1.1"))

#title-slide()

#outline-slide()

= Section A

== Subsection A.1

#tblock(title: [Theorem])[
  A simple theorem.

  $ x_(n+1) = (x_n + a / x_n) / 2 $
]

== Subsection A.2

A slide without a title but with *important* information.

= Section B

== Subsection B.1

#lorem(180)

#focus-slide[
  Wake up!
]

== Subsection B.2

We can use `#pause` to #pause display something later.

#pause

Just like this.

#meanwhile

Meanwhile, #pause we can also use `#meanwhile` to #pause display other content synchronously.

#show: appendix

= Appendix

== Appendix

Please pay attention to the current slide number.