# r-course

<!-- badges: start -->
[![Project Status: Inactive – The project has reached a stable, usable state but is no longer being actively developed; support/maintenance will be provided as time allows.](https://www.repostatus.org/badges/latest/inactive.svg)](https://www.repostatus.org/#inactive)
[![License: GPLv3](https://img.shields.io/badge/license-GPLv3-bd0000.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![License: CC BY-NC-SA 4.0](https://img.shields.io/badge/license-CC_BY--NC--SA_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-sa/4.0/)
[![Contributor Covenant 3.0 code of conduct badge](https://img.shields.io/badge/Contributor%20Covenant-3.0-4baaaa.svg)](https://www.contributor-covenant.org/version/3/0/code_of_conduct/)
<!-- badges: end -->

## Overview

This repository hosts the slides and materials for an introductory R programming course developed for the [Sustentarea](https://www.fsp.usp.br/sustentarea/) Research and Extension Center at the and setting all the keyUniversity of São Paulo ([USP](https://www5.usp.br/)).

The slides are available [here](https://danielvartan.github.io/r-course/).

## Usage

The slides were developed using the [Quarto](https://quarto.org/) publishing system, along with the [R](https://www.r-project.org/) programming language. To ensure consistent results, the [`renv`](https://rstudio.github.io/renv/) package was used to manage and restore the R environment.

After installing the three dependencies mentioned above, follow these steps to reproduce the results:

1. **Clone** this repository to your local machine.
2. **Open** the project in your preferred [IDE](https://en.wikipedia.org/wiki/Integrated_development_environment).
3. **Restore the R environment** by running [`renv::restore()`](https://rstudio.github.io/renv/reference/restore.html) in the R console. This will install all required software dependencies.
4. **Open** `index.qmd` and run the code as described.

## Rendering

After installing all dependencies (see the [Usage](#usage) section), run the following command in your terminal from the root directory of the project:

```bash
quarto render
```

This will activate the rendering process, which may take some time depending on your machine settings. Once completed, the [Quarto](https://quarto.org/) presentation will be available in the [`docs`](docs) folder.

## Contributing

[![Contributor Covenant 3.0 code of conduct badge](https://img.shields.io/badge/Contributor%20Covenant-3.0-4baaaa.svg)](https://www.contributor-covenant.org/version/3/0/code_of_conduct/)

Contributions are always welcome! Whether you want to report bugs, suggest new features, or help improve the code or documentation, your input makes a difference.

Before opening a new issue, please check the [issues tab](https://github.com/danielvartan/r-course/issues) to see if your topic has already been reported.

## License

[![License: GPLv3](https://img.shields.io/badge/license-GPLv3-bd0000.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![License: CC BY-NC-SA 4.0](https://img.shields.io/badge/license-CC_BY--NC--SA_4.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-sa/4.0/)

The code in this repository is licensed under the [GNU General Public License Version 3](https://www.gnu.org/licenses/gpl-3.0), while the report is available under the [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International](https://creativecommons.org/licenses/by-nc-sa/4.0/).

```
Copyright (C) Daniel Vartanian

The code in this report is free software: you can redistribute it and/or
modify it under the terms of the GNU General Public License as published by the
Free Software Foundation, either version 3 of the License, or (at your option)
any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with
this program. If not, see <https://www.gnu.org/licenses/>.
```

## Citation

To cite this work, please use the following format:

Vartanian, D., & Pereira, J. L. (2025). *An introduction to the R programming language*. Sustentarea Research and Extension Group at the University of São Paulo. <https://danielvartan.github.io/r-course/>

A BibLaTeX entry for LaTeX users is:

```
@software{vartanian2025,
  title = {An introduction to the R programming language},
  author = {{Daniel Vartanian} and {Jaqueline Lopes Pereira}},
  year = {2025},
  address = {São Paulo},
  institution = {Sustentarea Research and Extension Group at the University of São Paulo},
  langid = {en},
  url = {https://danielvartan.github.io/r-course/}
}
```

## Acknowledgments

<table>
  <tr>
    <td width="30%" align="center" valign="center">
      <a href="https://www.fsp.usp.br/sustentarea/"><img src="images/sustentarea-logo.svg" width="100" alt="Sustentarea Logo"/></a>
    </td>
    <td width="70%" valign="center">
      This work was supported, in part, by the <a href="https://www.fsp.usp.br/sustentarea/">Sustentarea</a> Research and Extension Group at the University of São Paulo (<a href="https://usp.br/">USP</a>).
    </td>
  </tr>
</table>

<table>
  <tr>
    <td width="30%" align="center" valign="center">
      <a href="https://fapesp.br/"><img src="images/cnpq-logo.svg" width="150em"/></a>
    </td>
    <td width="70%" valign="center">
      This work was financed, in part, by the National Council for Scientific and Technological Development (<a href="https://www.gov.br/cnpq/">CNPq</a>), Brazil. Process Number 383443/2024-5.
    </td>
  </tr>
</table>
