# COBOL and HTTP Request Programs

This repository contains two programs: one written in COBOL for reading data from a file, and another for making an HTTP request using a system call.

## COBOL Data Reader

### Program Description

The COBOL program in this repository, `READTESTDATA.cbl`, is designed to read data from a file named `weather2020.dat`. The file has a specific format with various fields.

### Usage

1. Compile the COBOL program using a compatible COBOL compiler.
2. Run the compiled program. It will read the data from `weather2020.dat` and display it in tabular form.

### File Format

The `weather2020.dat` file has the following format:
| 1 | 2 | 3 | 4 |
| 5 | 6 | 7 | 8 |



## HTTP Request Program

### Program Description

The second program, `HTTP-REQUEST.cbl`, is a COBOL program that makes an HTTP request using the `wget` command-line tool. It sends a GET request to a specified URL and saves the response to a file named `response.txt`.

### Usage

1. Compile the COBOL program using a compatible COBOL compiler.
2. Run the compiled program. It will make an HTTP request and save the response to `response.txt`.

### Note

Make sure you replace `"link"` in the `MOVE "wget 'link"` line with the actual URL you want to request.

## Repository Structure

.<br/>
├── READTESTDATA.cbl
<br/>└── HTTP-REQUEST.cbl




Feel free to modify and use these programs as needed for your projects.

Enjoy exploring and using these COBOL programs!
