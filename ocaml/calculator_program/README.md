# OCaml programs

Requires **OCaml 5.5+** (uses `String.find_first`).

```bash
# If using opam:
eval $(opam env)
```

## Compile

```bash
ocamlc -o calculator calculator_functions.ml calculator.ml
```

## Run

```bash
./calculator
```

## Clean

```bash
rm -f *.cmi *.cmo *.cmx *.o calculator
```
