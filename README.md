# INTEGRATION OF GRAVITY DISTURBANCE AND BOUGUER DISTURBANCE FOR GEOLOGICAL AND GEOPHYSICAL MAPPING IN PARANÁ STATE, SOUTHERN BRAZIL

This repository contains the Python code, processing workflow, and datasets used in the study:

**"Integration of Gravity Disturbance and Bouguer Disturbance for Geological and Geophysical Mapping in Paraná State, Southern Brazil"**.

The project integrates heterogeneous gravity datasets to produce a unified gravimetric framework for the state of Paraná, Brazil, using open‑source scientific computing tools, with emphasis on the Fatiando a Terra ecosystem.

---

## Abstract

The state of Paraná, Brazil, has been the subject of multiple geophysical surveys, including numerous gravity data acquisitions carried out over several decades. However, these datasets had not previously been compiled into a unified and internally consistent database.

This project presents the integration of gravity disturbance and Bouguer disturbance data to produce a regional gravimetric model and geophysical overview of Paraná's geological framework. The workflow is implemented entirely in Python using open‑source libraries, enabling reproducibility, transparency, and extensibility of the analysis.

---

## Data Availability

The final georeferenced grids generated in this study (gravity disturbance, Bouguer disturbance, tilt derivative, and total horizontal derivative) are publicly available in GeoTIFF format at Zenodo:

👉 [https://doi.org/10.5281/zenodo.18850180](https://doi.org/10.5281/zenodo.18850180)

The dataset corresponds exactly to the fields analyzed in the published article and includes the final validated results at 1600 m spatial resolution (EPSG:5880).

---


## Objectives

* Integrate heterogeneous gravity datasets into a consistent regional database
* Harmonize gravity disturbance and Bouguer disturbance representations
* Generate a unified gravimetric map of Paraná State
* Support geological and geophysical interpretation at regional scale
* Provide a fully reproducible computational workflow

---

## Requirements

The computational workflow is implemented in Python and depends on the scientific stack commonly used in geophysical modeling.

### Core dependencies

* Python 3.x
* NumPy
* SciPy
* Pandas
* Xarray
* Matplotlib
* PyGMT
* Boule
* Verde
* Harmonica
* Fatiando a Terra ecosystem

---

## Citation

If you use this repository, the associated workflow, or the published grids, please cite **both** the article and the Zenodo dataset:

**Article**

Pereira, E. K. C., Bongiolo, A. B. S., Szameitat, L. S. A., Rodrigues, T. L., & Ferreira, F. J. F. (2026).
*Integration of Gravity Disturbance and Bouguer Disturbance for Geological and Geophysical Mapping in Paraná State, Southern Brazil.*
Brazilian Journal of Geophysics, 43(3).
[https://doi.org/10.22564/brjg.v43i3.2345](https://doi.org/10.22564/brjg.v43i3.2345)

```bib
@article{KerouakCordeiroPereira2026,
  title = {Integration of Gravity Disturbance and Bouguer Disturbance for Geological and Geophysical Mapping in Paraná State, Southern Brazil},
  volume = {43},
  number = {3},
  journal = {Brazilian Journal of Geophysics},
  publisher = {Sociedade Brasileira de Geofisica},
  doi = {10.22564/brjg.v43i3.2345},
  url = {http://dx.doi.org/10.22564/brjg.v43i3.2345},
  ISSN = {2764-8044},
  author = {Kerouak C. Pereira, Eros and Bongiolo, Alessandra de Barros e Silva and Szameitat, Luizemara Soares Alves and Rodrigues, Tiago Lima and Ferreira, Francisco José Fonseca},
  year = {2026},
  month = feb
}
```

**Dataset**

Pereira, E. K. C., Bongiolo, A. B. S., Szameitat, L. S. A., Rodrigues, T. L., & Ferreira, F. J. F. (2026).
*Gravity and Bouguer Disturbance Grids – Paraná State, Brazil (1600 m resolution).*
Zenodo. [https://doi.org/10.5281/zenodo.18850180](https://doi.org/10.5281/zenodo.18850180)

```bib
@misc{Pereira2026Zenodo,
  title = {Gravity and Bouguer Disturbance Grids – Paraná State, Brazil (1600 m resolution)},
  author = {Cordeiro Pereira, Eros Kerouak and Bongiolo, Alessandra de Barros e Silva and Soares Alves Szameitat, Luizemara and Lima Rodrigues, Tiago and Ferreira, Francisco},
  year = {2026},
  publisher = {Zenodo},
  doi = {10.5281/zenodo.18850180},
  url = {https://doi.org/10.5281/zenodo.18850180},
  keywords = {gravimetry, gravity disturbance, bouguer disturbance, Paraná, Brazil},
  license = {CC-BY-4.0}
}
```

---

## Authors

**Eros Kerouak Cordeiro Pereira**
- Federal University of Paraná (UFPR), Sector of Earth Sciences, Department of Geology, Graduate Program in Geology
- ORCID: [https://orcid.org/0009-0008-0891-6781](https://orcid.org/0009-0008-0891-6781)
- Lattes: [http://lattes.cnpq.br/3980280544623493](http://lattes.cnpq.br/3980280544623493)

**Alessandra de Barros e Silva Bongiolo**
- Federal University of Paraná (UFPR), Sector of Earth Sciences, Department of Geology
- ORCID: [https://orcid.org/0000-0001-7142-0043](https://orcid.org/0000-0001-7142-0043)
- Lattes: [http://lattes.cnpq.br/5310171606215286](http://lattes.cnpq.br/5310171606215286)

**Luizemara Soares Alves Szameitat**
- Observatório Nacional (ON), Brazil
- ORCID: [https://orcid.org/0000-0002-1148-5635](https://orcid.org/0000-0002-1148-5635)
- Lattes: [http://lattes.cnpq.br/4322898960715686](http://lattes.cnpq.br/4322898960715686)

**Tiago Lima Rodrigues**
- Federal University of Paraná (UFPR), Sector of Earth Sciences, Department of Geomatics
- ORCID: [https://orcid.org/0000-0002-3037-9037](https://orcid.org/0000-0002-3037-9037)
- Lattes: [http://lattes.cnpq.br/1649748426450169](http://lattes.cnpq.br/1649748426450169)

**Francisco José Fonseca Ferreira**
- Federal University of Paraná (UFPR), Sector of Earth Sciences, Department of Geology
- ORCID: [https://orcid.org/0000-0002-0269-5833](https://orcid.org/0000-0002-0269-5833)
- Lattes: [http://lattes.cnpq.br/6496725278150381](http://lattes.cnpq.br/6496725278150381)

---

## Author Contributions

Eros Kerouak Cordeiro Pereira — Conceptualization, methodology, software, data curation, formal analysis, visualization, writing (original draft).

Alessandra de Barros e Silva Bongiolo — Supervision, validation, writing (review & editing).

Luizemara Soares Alves Szameitat — Validation, investigation, writing (review & editing).

Tiago Lima Rodrigues — Methodology, validation, writing (review & editing).

Francisco José Fonseca Ferreira — Supervision, writing (review & editing).

---
