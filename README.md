# FAVErtools

This is a package for working with the output of FAVE-extract.

## Installation

    library(devtools)
    install_github("FAVErtools", "JoFrhwld")
    
## Usage

There are two Plotnik (.plt) files and one FAVE (.txt, with a plotnik-like header) of my own vowels bundled with the package. 
If you clone the directory, you can access them from wherever you clone the repository. 
To access them from the installed R package, you can use

    frueh_plt_path <- system.file("extdata", "PH06-2-A-JosefFruehwald.plt", package = "FAVErtools")

`frueh_plt_path` is a character vector the path to the plotnik file.
You'll have to go inspect it yourself to satisfy your curiosity that it is, in fact, a plotnik file.

Reading in the plotnik file is as simple as:

    data <- read.plotnik("speaker.plt")
    
Also included in the package are a number of `plt_*` functions, which translate plotnik codes into readable codes.
The procedure for reading in a FAVE text output is also documented in `?FAVErtools`:

    header <- scan(frueh_fave_path, nmax = 1,what = "list", sep = "\n")
    frueh_fave_df <- read.delim(frueh_fave_path, skip = 2)
     
    ## Recode vowel codes to be readable.
    frueh_fave_df$VClass <- plt_vowels(frueh_fave_df$cd)
    frueh_fave_df$Manner <- plt_manner(frueh_fave_df$fm)
    frueh_fave_df$Place  <- plt_place(frueh_fave_df$fp)
    frueh_fave_df$Voice  <- plt_manner(frueh_fave_df$fv)
    frueh_fave_df$PreSeg <- plt_preseg(frueh_fave_df$ps)
    frueh_fave_df$FolSeq <- plt_folseq(frueh_fave_df$fs)
     
    ## combine header info with measurements
    header_df <- read.csv(textConnection(header), header = FALSE)
    frueh_fave_df <- cbind(header_df, frueh_fave_df)
    
    