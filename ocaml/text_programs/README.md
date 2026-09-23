# OCaml programs

Requires **OCaml 5.5+** (uses `String.find_first`).

```bash
# If using opam:
eval $(opam env)
```

## Compile

### `stats` (text statistics)

Uses `textstat.mli`, `textstat.ml`, and `stats.ml`.

```bash
ocamlc -c textstat.mli
ocamlc -c textstat.ml
ocamlc -o stats textstat.cmo stats.ml
```

Or in one step:

```bash
ocamlc -o stats textstat.mli textstat.ml stats.ml
```

### `reverse` (reverse file lines)

```bash
ocamlc -o reverse reverse_functions.ml reverse.ml
```

### `substring` (print lines containing a substring)

```bash
ocamlc -o substring substring_functions.ml substring.ml
```

## Run

```bash
./stats <filename>
./reverse <in_filename> <out_filename>
./substring <filename> <substring>
```

## Clean

```bash
rm -f *.cmi *.cmo *.cmx *.o stats reverse substring
```
