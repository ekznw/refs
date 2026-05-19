# this r script is for addhoc operations on the bspi gis bibtex reference
# database. This script is a collection of code and should not be
# run as is!
#'@author Paul J. Gordijn

# load packages ----
library(bib2df)
library(RefManageR)
library(bibtex)
library(cli)

# set bib file path
bib_file <- "bspi_lib.bib"

# check if the file exists and make a backup if necessary
if (!file.exists(bib_file)) {
  cli_abort("ref db '{rdb}' does not exist in the root directory!")
}

# continue with ref db
# Path to your bib file

# Read all lines
lines <- readLines(bib_file)

# Extract jabref-meta comments
meta_lines <- lines[grepl("^@Comment\\{jabref-meta:", lines)]

# Extract everything else (real entries)
entry_lines <- lines[!grepl("^@Comment\\{jabref-meta:", lines)]



# Write a temporary file with only real entries
tmp_file <- tempfile(fileext = ".bib")
writeLines(entry_lines, tmp_file)

# Read into R
bib <- read.bib(tmp_file)


# Assume bib is already read (using bibtex::read.bib)
# for (i in seq_along(bib)) {
#   # Save current key to cid
#   bib[[i]]$cid <- bib[[i]]$key
# }

# Write entries to temp file
tmp_write <- tempfile(fileext = ".bib")
write.bib(bib, file = tmp_write)

# Read the cleaned entries
cleaned_entries <- readLines(tmp_write)

# Combine metadata + entries
final_lines <- c(cleaned_entries, meta_lines)

# Write back to original file
writeLines(final_lines, bib_file)

library(data.table)
df <- bib2df(tmp_write) |> setDT()
names(df)
df$FILE

df[!is.na(FILE), FILE := gsub(CID, BIBTEXKEY, FILE)]
df <- df[!is.na(YEAR)]
df[!is.na(FILE), FILE := mapply(function(f, c, b) gsub(c, b, f),
                                FILE, CID, BIBTEXKEY)]

# write to tmp_file
tmp_f <- tempfile(pattern = "out", fileext = ".bib")
df2bib(df, file = tmp_f)
cleaned_entries <- readLines(tmp_f)
final_lines <- c(cleaned_entries, meta_lines)
writeLines(final_lines, bib_file)

name_switch <- df[!is.na(CID), .(CID, BIBTEXKEY)]
write.csv(name_switch, "scripts/names_switch.csv")

names(name_switch) <- tolower(names(name_switch))

# loop through all files and change name in files dir
fs <- list.files("files")

# make table for renaming purposes
sdf <- data.table(
  fs = fs,
  fext = tools::file_ext(fs),
  fsp = gsub("\\.[^.]+$", "", fs)
)

sdf <- sdf[name_switch, on = .(fsp = cid)]

lapply(seq_len(nrow(sdf)), function(i) {
  if (!is.na(sdf$fs[i])) {
    newname <- file.path("files", paste0(sdf[i]$bibtexkey, ".", sdf[i]$fext))
    oldname <- file.path("files", sdf[i]$fs)
    file.rename(oldname, newname)
  }
})