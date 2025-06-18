# AQI Classification: Formally Verified with Coq and OCaml

This project implements a formally verified Air Quality Index (AQI) classifier using the Coq proof assistant. The core properties — mutual exclusion and complete coverage — are proven in Coq and extracted to OCaml for runtime validation.

## 🔧 Prerequisites

- OCaml 4.14.1
- OPAM
- Dune
- Coq ≥ 8.18
- Zarith

## 📦 Setup

```bash
opam switch create . ocaml-base-compiler.4.14.1
eval $(opam env)
opam install dune zarith coq
# AQI Classification (Formal Verification)

This project formally verifies air quality index (AQI) classification boundaries using Coq and extracts verified OCaml code for runtime execution.
