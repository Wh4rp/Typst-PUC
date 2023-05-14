#import "theorems.typ": *

#let problem = thmbox(
    "problem",
    "Problema",
    separator: strong(".") + h(0.2em),
    base_level: 0,
    inset: (top: 0em, left: 1.2em, right: 1.2em),
    breakable: true,
)

#let solution = thmplain(
    "solution",
    "Solución",
    separator: h(0.2em),
    base_level: 0,
    inset: 1.2em,
    stroke: rgb("#68ff68") + 1pt,
    breakable: true,
).with(numbering: none)

#let project(
    curso: (
        sigla: none,
        nombre: none,
        departamento: none,
    ),
    autor: (
        nombre: none,
        apellido: none,
        email: none,
    ),
    numero_de_ayudantia: none,
    fecha: none,
    body: none,
) = {
    set page(margin: (x: 2.5cm, y: 2cm), numbering: "1",)
    set text(size: 11pt)
    set enum(numbering: "a)", indent: 10pt)

    grid(
        columns: (60pt, auto),
        rows: (auto, auto),
        column-gutter: 10pt,
        image("uc.svg"),
        align(horizon)[
            Pontificia Universidad Católica de Chile\
            Escuela de Ingeniería\
            #curso.departamento\
            #autor.nombre #autor.apellido - #link("mailto:" + autor.email, autor.email)
        ],
    )

    align(center)[
        #text(weight: 700, 1.5em, [#curso.sigla - #curso.nombre])\
        #text(weight: 500, 1.25em, [Ayudantía #numero_de_ayudantia - #fecha])
    ]

    v(10pt)

    set text(size: 12pt)

    body
}
