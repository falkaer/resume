#import "style.typ": *

// icons are from https://simpleicons.org and https://feathericons.com
// phone/email obscured from crawlers, idk if it really matters
#let codes2str(codes) = codes.map(str.from-unicode).sum()
#let email_codepoints = (
  107,
  101,
  110,
  110,
  121,
  64,
  102,
  97,
  108,
  107,
  97,
  101,
  114,
  46,
  105,
  111,
)
#let phone_codepoints = (43, 52, 53, 32, 50, 48, 32, 51, 52, 32, 52, 54, 32, 48, 50)

#let email = codes2str(email_codepoints)
#let phone = codes2str(phone_codepoints)
#let author = "Kenny Falkær Olsen"
#let github = "falkaer"
#let linkedin = "falkaer"
#let website = "falkaer.io"

#show: setup.with(author: "Kenny Falkær Olsen")

// #show link: set text(fill: heading_color)
// #show link: underline.with(stroke: heading_color, background: )

#show link: underline
// #show link: it => {
//   underline(it.body)
// }

// Header
#grid(
  columns: (auto, 1fr),
  align(top + left)[
    #set block(spacing: 0.5em)
    #text(author, size: 2.5em)

  ], align(right + top)[
    #set block(below: 0.5em)
    #link("https://github.com/" + github, )[#icontext("icons/github.svg", "github.com/" + github)]
    #link("mailto:" + email)[#icontext("icons/email.svg", email)]
    #link("tel:" + phone)[#icontext("icons/phone.svg", phone)]
    #link("https://" + website)[#icontext("icons/globe.svg", website)]
  ]
)

= Experiences

#experience(
  "Industrial Ph.D. student",
  "Technical University of Denmark & WS Audiology",
  datetime(year: 2023, month: 9, day: 1),
  none,
)

I am pursuing an industrial Ph.D. at DTU Cognitive Systems with WS Audiology focused on
real-time neural speech enhancement for use in hearing aids through audio-specific
representation learning, self-supervised learning, and compute- and latency-aware
network design.

At the moment I am working on linear RNNs for lightweight speech enhancement, real-time
neural network inference, and time-warped loss functions.

#experience(
  "Machine learning engineer",
  "WS Audiology",
  datetime(year: 2022, month: 12, day: 1),
  datetime(year: 2023, month: 9, day: 1),
)

I previously worked full-time in the R&D department at WS Audiology in Lynge, Denmark as
part of an AI accelerator team researching novel ways to use machine learning in hearing
aids. I worked on adapting state-of-the-art deep learning for speech enhancement to edge
devices.

#experience(
  "Student machine learning engineer",
  "Moodagent",
  datetime(year: 2019, month: 6, day: 1),
  datetime(year: 2022, month: 3, day: 1),
)

I worked in a student position on the machine learning team at Moodagent and mostly
worked on representation learning and semantic similarity search on music data.

#experience(
  "Teaching assistant at DTU Compute",
  "Technical University of Denmark",
  datetime(year: 2017, month: 9, day: 1),
  datetime(year: 2019, month: 6, day: 1),
)

I was a teaching assistant in the courses 02101 Introductory Programming and 02807
Computational Tools for Data Science several times.

= Projects

#experience(
  "Locally adaptive kernel density estimation",
  "Technical University of Denmark",
  datetime(year: 2020, month: 9, day: 1),
  datetime(year: 2022, month: 7, day: 1),
)

Academic side-project starting as a special course on extending kernel density
estimation (KDE) to a fully Bayesian setting. The work later expanded, and I developed a
framework for learning locally adaptive full-covariance kernels in KDE and implemented
high-performance compute kernels to speed the model up significantly. Presented at
AISTATS 2024 and published in PMLR #cite( <pmlr-v238-olsen24a>).

= Education

#experience(
  "M.Sc. Mathematical modelling and computing",
  "Technical University of Denmark",
  datetime(year: 2020, month: 1, day: 1),
  datetime(year: 2022, month: 9, day: 1),
)

#experience(
  "B.Sc. Software technology",
  "Technical University of Denmark",
  datetime(year: 2016, month: 9, day: 1),
  datetime(year: 2019, month: 12, day: 1),
)

// TODO: use datetime.today to set a "last updated"
// do it in header/footer?

= Skills & interests

- *Programming*: Experienced with Python (incl. PyTorch internals), C/C++, Rust, Julia,
  and GPGPU programming (CUDA and OpenAI Triton). Highly interested in applying systems
  programming to machine learning.
- *Mathematics*: Experienced with variational inference and functional analysis.
  Interested in applying ideas from signal processing and functional analysis to machine
  learning.
- *Personal*: Fluent in Danish and English. I live in Copenhagen and spend my time hanging
  out with friends, bouldering, watching obscure movies, and tinkering with electronics.
  May convince you to use Linux.

// TODO: add generative art to personal when I actually post it some day

#bibliography("refs.bib", title: "References")
