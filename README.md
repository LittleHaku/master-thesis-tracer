# master‑thesis‑tracer

Master’s thesis on TRACER, a tool to explore, model and profile chatbots.

## Requirements (Arch Linux)

```bash
sudo pacman -S texlive-basic \
  texlive-luatex \
  texlive-fontsrecommended \
  texlive-fontsextra \
  texlive-latexextra
````

Then

```bash
luaotfload-tool --update
sudo texhash
```

## Build

```bash
make
```

The PDF will be in `build/main.pdf`.

If needed, you can also run `make clean` or `make purge` to clean up the build directory.

## Acknowledgments

This LaTeX document is based on the [TUM thesis LaTeX template][TUM thesis template]. Please refer to their repository for the original version and template details.

[TUM thesis template]: https://github.com/TUM-Dev/tum-thesis-latex

## License

This project is licensed under the MIT License, see the [LICENSE](LICENSE) file for details.
