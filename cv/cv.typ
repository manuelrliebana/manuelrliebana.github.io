// CV de Manuel Rafael Liébana Cruz
// Compilar: ./build.sh (genera CV_ManuelLiebana_ES.pdf y CV_ManuelLiebana_EN.pdf)

#let lang = sys.inputs.at("lang", default: "es")
#let t(es, en) = if lang == "en" { en } else { es }

// ── Datos personales ──
#let nombre = "Manuel Rafael Liébana Cruz"
#let email = "manuelrliebana@gmail.com"
#let telefono = "+34 601 36 37 28"
#let ciudad = t("Jaén", "Jaén, Spain · open to relocation")
#let github = "github.com/manuelrliebana"
#let linkedin = "linkedin.com/in/manuelrliebana"
#let web = "manuelrliebana.github.io"

// ── Estilo (marca personal: Bricolage Grotesque + rombo ámbar) ──
#let ambar = rgb("#C98A2E")
#let tinta = rgb("#1C1C1E")
#let gris = rgb("#5F6368")
#let titulo-font = "Bricolage Grotesque"

#set document(title: nombre + " — CV", author: nombre)
#set page(paper: "a4", margin: (x: 1.7cm, top: 1.5cm, bottom: 1.4cm))
#set text(font: "Inter", size: 9.4pt, fill: tinta, lang: lang)
#set par(justify: false, leading: 0.58em)
#show link: set text(fill: tinta)

#let rombo(size: 7pt) = box(baseline: -0.5pt,
  rotate(45deg + 10deg, square(size: size, fill: ambar)))

#let seccion(titulo) = {
  v(9pt)
  grid(columns: (auto, 1fr), column-gutter: 7pt, align: horizon,
    text(font: titulo-font, weight: 700, size: 11.5pt, upper(titulo)),
    line(length: 100%, stroke: 0.6pt + ambar))
  v(3pt)
}

#let entrada(titulo, lugar, fecha, cuerpo: none) = {
  grid(columns: (1fr, auto), row-gutter: 3pt,
    text(weight: 600, titulo), text(fill: gris, size: 8.8pt, fecha),
    text(fill: gris, lugar), [])
  if cuerpo != none { block(above: 4pt, cuerpo) }
  v(4pt)
}

#set list(marker: text(fill: ambar, sym.bullet), indent: 2pt, body-indent: 6pt, spacing: 4pt)

// ── Cabecera ──
#text(font: titulo-font, weight: 700, size: 22pt, nombre) #h(4pt) #rombo(size: 9pt)
#v(-8pt)
#text(fill: gris, size: 10pt, t("Ingeniería Informática · Desarrollo backend y móvil",
                                "Computer Engineering · Backend & mobile development"))
#v(4pt)
#text(size: 8.5pt)[
  #ciudad #h(3pt)·#h(3pt) #telefono #h(3pt)·#h(3pt) #link("mailto:" + email)[#email] \
  #link("https://" + web)[#web] #h(3pt)·#h(3pt) #link("https://" + github)[#github]
  #h(3pt)·#h(3pt) #link("https://www." + linkedin)[#linkedin]
]

// ── Perfil ──
#seccion(t("Perfil", "Profile"))
#t(
  [Estudiante de último curso de Ingeniería Informática (Tecnologías de la Información) en la Universidad de Jaén, con base en desarrollo backend y móvil con Python y Flutter y formación en redes. Dos estancias Erasmus+, en Suecia y Portugal, que me han acostumbrado a trabajar en inglés y en equipos internacionales. Busco mi primer puesto como desarrollador de software a partir de julio de 2027, en remoto o con disponibilidad para cambiar de residencia, en España o en el extranjero.],
  [Final-year Computer Engineering student (Information Technology track) at the University of Jaén, with a foundation in backend and mobile development using Python and Flutter and a background in networking. Two Erasmus+ exchanges, in Sweden and Portugal, have made me comfortable working in English and in international teams. Looking for my first role as a software developer from July 2027, remote or on-site, and open to relocating within Spain or abroad.],
)

// ── Formación ──
#seccion(t("Formación", "Education"))
#entrada(
  t("Grado en Ingeniería Informática — Tecnologías de la Información", "BSc in Computer Engineering — Information Technology"),
  t("Universidad de Jaén", "University of Jaén, Spain"),
  t("Finalización prevista: jul. 2027", "Expected: Jul 2027"),
  cuerpo: text(size: 8.9pt)[#t("Asignaturas destacadas", "Relevant coursework"): #t(
    "Redes y Calidad de Servicio, Inteligencia Artificial, Metaheurísticas, Sistemas Multiagente, Ejercicio Profesional de la Informática.",
    "Networks and Quality of Service, Artificial Intelligence, Metaheuristics, Multi-Agent Systems, Professional Practice in Computing.")],
)
#entrada(
  t("Estancia Erasmus+", "Erasmus+ exchange"),
  t("Universidade de Aveiro, Portugal", "University of Aveiro, Portugal"),
  t("feb. 2025 – jul. 2025", "Feb 2025 – Jul 2025"),
  cuerpo: text(size: 8.9pt, t("Asignaturas y trabajos íntegramente en inglés.",
                              "Coursework and assignments entirely in English.")),
)
#entrada(
  t("Estancia Erasmus+", "Erasmus+ exchange"),
  "Jönköping University, " + t("Suecia", "Sweden"),
  t("ago. 2021 – dic. 2021", "Aug 2021 – Dec 2021"),
  cuerpo: text(size: 8.9pt, t("Docencia y vida diaria íntegramente en inglés.",
                              "Studies and daily life entirely in English.")),
)

// ── Proyectos ──
#seccion(t("Proyectos", "Projects"))
#entrada(
  t("Trabajo Fin de Grado: sistema de gestión para agrupaciones musicales",
    "Final-year project: management system for music ensembles"),
  t("Universidad de Jaén", "University of Jaén"),
  t("En desarrollo · 2026–27", "In progress · 2026–27"),
  cuerpo: list(
    t([Plataforma para la gestión de bandas, coros y orquestas, desarrollada desde cero.],
      [Platform for managing bands, choirs and orchestras, built from scratch.]),
    t([Backend en *Python (FastAPI)* con *PostgreSQL* y aplicación móvil en *Flutter*.],
      [*Python (FastAPI)* backend with *PostgreSQL* and a *Flutter* mobile app.]),
    t([Conocimiento directo del dominio como músico en activo en varias agrupaciones.],
      [First-hand domain knowledge as an active musician in several ensembles.]),
  ),
)
#entrada(
  t("Radioenlace punto a punto sin visión directa", "Non-line-of-sight point-to-point wireless link"),
  t("Proyecto personal", "Personal project"),
  "2026",
  cuerpo: list(
    t([Recuperación y reconfiguración de un enlace de 2,4 GHz (*Ubiquiti NanoStation Loco M2*) en modo puente que lleva Internet a una vivienda a unos 60 m, sin visión directa; integración con los nuevos routers y sustitución del cableado exterior.],
      [Recovered and reconfigured a 2.4 GHz bridge link (*Ubiquiti NanoStation Loco M2*) delivering Internet to a house about 60 m away with no line of sight; integrated new routers and replaced the outdoor cabling.]),
    t([Diagnóstico con mediciones en cada punto de la red y optimización del canal dentro del límite legal (20 dBm PIRE): rendimiento del enlace hasta cuatro veces mayor.],
      [Diagnosed the bottleneck with measurements across the network and optimised the channel within the legal limit (20 dBm EIRP): up to 4× link throughput.]),
  ),
)

// ── Habilidades ──
#seccion(t("Habilidades técnicas", "Technical skills"))
#grid(columns: (auto, 1fr), column-gutter: 12pt, row-gutter: 5pt,
  text(weight: 600, t("Lenguajes", "Languages")), [Python, Java, C/C++, Dart, SQL],
  text(weight: 600, "Frameworks"), [FastAPI, Flutter],
  text(weight: 600, t("Bases de datos", "Databases")), [PostgreSQL],
  text(weight: 600, t("Herramientas", "Tools")), [Git, Docker, Linux],
  text(weight: 600, t("Conceptos", "Concepts")),
    t([Programación orientada a objetos, APIs REST, redes TCP/IP y calidad de servicio (QoS)],
      [Object-oriented programming, REST APIs, TCP/IP networking and quality of service (QoS)]),
)

// ── Idiomas ──
#seccion(t("Idiomas", "Languages"))
#grid(columns: (auto, 1fr), column-gutter: 12pt, row-gutter: 5pt,
  text(weight: 600, t("Español", "Spanish")), t("Nativo", "Native"),
  text(weight: 600, t("Inglés", "English")),
    t("B2 — Cambridge First Certificate. Uso diario académico y social durante el Erasmus en Suecia.",
      "B2 — Cambridge First Certificate. Daily academic and social use during Erasmus in Sweden."),
)

// ── Actividades ──
#let actividad(titulo, fecha, cuerpo) = {
  grid(columns: (1fr, auto),
    [#text(weight: 600, titulo) #h(4pt) #text(size: 8.9pt, cuerpo)],
    text(fill: gris, size: 8.8pt, fecha))
  v(5pt)
}
#seccion(t("Voluntariado y actividades", "Volunteering & activities"))
#actividad(
  t("Vicepresidente, asociación sin ánimo de lucro.", "Vice President, local non-profit association."),
  t("Actualidad", "Present"),
  t("Gestión administrativa desde su fundación (registro, trámites fiscales, cuentas) y coordinación de voluntarios en eventos.",
    "Administration since its founding (registration, tax filings, accounts) and coordination of volunteers at events."),
)
#actividad(
  t("Músico (clarinete).", "Musician (clarinet)."),
  t("Actualidad", "Present"),
  t("Banda Municipal de Jamilena y Coro y Orquesta Diocesanos de Jaén.",
    "Jamilena Municipal Band and Diocesan Choir and Orchestra of Jaén."),
)
