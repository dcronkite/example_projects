# Project Name

A very short description of this project or the files contained within.

## Table of Contents

If you want a table of contents, you can create a bulleted list with links for each section. For creating the links,
turn the section names to lowercase and add hyphens (`-`) for spaces.

* [About the Project](#about-the-project)
* [Getting Started](#usage)
    * [Prerequisites](#prerequsites)
    * [Installation/Setup](#installationsetup)
    * [Prepare Input Data](#prepare-input-data)
    * [Example Usage](#example-usage)
* [Contact](#contact)
* [Publications](#publications)
* [License](#license)
* [Acknowledgements](#acknowledgements)

## About the Project

You can include a fuller description here.

## Usage

Here, we can explain how to get our code up and running. Some possible sections might be any prerequisites/assumptions,
installation instructions, and documentation on input data.

### Prerequsites

* Requires SAS

### Installation/Setup

* Clone this repository

### Prepare Input Data

* Input data should have two columns
    * The first called `id` is a unique identifier for each row
    * The second called `value` is a `1` if it should be include or a `0` if not
    * See example data in the `example` folder

| Column | Description                                      |
|--------|--------------------------------------------------|
|  id    | unique identifier                                |
| value  | 1 or 0; 1 if should be include in output dataset | 

### Example Usage

Here is an example for using this macro:
```sas
%include "retain_ones.sas";

proc import file="example/example_data.csv" out=work.example_data dbms=csv;
run;

%RetainOnes(work.example_data, work.only_ones);

proc print data = work.only_ones;
run;
```

## Contact

Please report any issues or feature requests to the [issue tracker](https://github.com/kpwhri/example_projects/issues).

## Publications

Please cite your use of this macro in your projects or review our publication.

* Publication details with pubmed link.


## License

Include a license to allow others to use your code.

Provided under the MIT License.

See https://kpwhri.mit-license.org for more information.

## Acknowledgements

Thank you everyone for making this a possibility.
