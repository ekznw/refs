<img src="../images/ekznw120.png" align="right">
</br>
</br>

# Biodiversity, Spatial Planning & Information:<br> GIS reference database <br>

> <center> Ezemvelo KwaZulu-Natal Wildlife <br> Biodiversity, Spatial Planning & Information, GIS Division </center>

<center>

> **Author:** Paul Gordijn  
> **Email:** Paul.Gordijn@kznwildlife.com  
> **Date:** 20-11-2025
</center>

> This directory contains the Biodiversity, Spatial Planning & Information's (**BSPI**) reference BibTeX database, and associated miscellaneous scripts for manipulating reference entries, plus information on how to use the database in the ['JabRef' GUI](https://www.jabref.org). For extensive help files on JabRef visit https://www.jabref.org.

> ### Revision history

> | Date | Author(s)   | Notes |
> |----------|-------------|-------------|
> | 20 November 2025 | Paul Gordijn | Draft document for comment. |




## Context

__Aim:__ This aim of this document is to describe the purpose of the BSPI GIS reference database, and associated directory functionality.  

The BSPI GIS reference database serves as a literature catalogue primariliy for scientific writing, maintaining, organising and accessing reference metadata and associated softcopy files (e.g., pdfs, htmls, docs, ppts, etc), and citation metadata for relevant BSPI data holdings. The catalogue backend is formatted as 'BibTeX' entries, which are perhaps the most universally used, open source citation-data schema. The format is interchangeable with most reference/citation database managers. Moreover, there is excellent cite-while-you-write functionality for BibTeX files, through pandoc add-ons in LaTeX, RMarkdown, Jupyter, and Quarto. There are also good options for integrating with word processors.

## JabRef

JabRef is an open source (free) reference database system and citation manager. It makes managing citation entries easy, and is highly customizable. Amongst other reference management software JafRef stands out for its flexibility and free availability (unlike EndNote or RefManager). Other programs like Zotero and Mendeley have good free tiers with cloud compatibility, however, storage of files in the free tier is limiting for organizational use. JabRef does not have native cloud functionality, but a team can maintain a shared BibTeX file in a number of ways: either on a shared cloud drive, network drive, or using a SQL database. JaRef is also stronger with BibTeX managers than other propietry equivalents making it the default choice for LateX and Pandoc integration (Quarto or RMarkdown) integration.

### Installing JabRef

Follow the installation instructions on the [JabRef webpage](https://www.jabref.org).

### Opening the BSPI GIS reference database

BibTeX reference databases are indicated with the 'bib' file extension. You can either open the database from within JabRef, or by 'right-clicking' on the 'bspi_lib.bib' file ➡️ select the 'Open with' ➡️ and select JabRef.

### Adding and editing database entries
Following the rules below will help save time later when searching for references and formatting your bibliographies.

JabRef adheres to BibTeX standards for populating metadata for various types of documents. Selection of the document type must be done appropriately. Different entry types for various types of documents shown below. These entry types are selectable in the JabRef dialog when creating a new entry (top menu: Library ➡️ New entry (CTRL + N)) ➡️ follow the prompts and enter the required metadata.


| Entry type     | Synonym            | Description |
|--|--|-------------|
| Article        | Journal Article    | An article from a journal or magazine. |
| Book           | Book               | A book with an explicit publisher. |
| Booklet        | Booklet            | A work that is printed and bound, but without a named published or sponsoring institution. |
| Conference     | In proceedings     | The same as Inproceedings. |
| Electronic     | Electronic         | Reference to a webpage. |
| Ieeetranbstctl | Ieeetranbstctl     | Advanced technical usage beyond our scope. |
| Inbook         | In book            | A part of a book, which may be a chapter (or section etc) and/or a range of pages. |
| Incollection   | In collection      | A part of a book having its own title. |
| Inproceedings  | In Proceedings     | A article in a conference proceedings. This is the same as Conference. |
| Manual         | Manual             | Technical documentation. |
| Mastersthesis  | Minor thesis       | This is actually a minor thesis NOT a Masters thesis. A minor thesis is a thesis that was done as part of a qualification that included mandatory course work. A qualification by research is a major thesis (see PhD thesis). Generally, in South Africa, minor theses are done at Honors level and below. |
| Misc           | Miscellaneous      | For data sets and other. |
| Periodical     | Periodical         | May include narrative and opinion. Written for the general public or interested non-specialist (e.g. news or magazine articles). |
| Phdthesis      | Major thesis       | This is actually not a PhD thesis BUT a major thesis. A major thesis is done for complete fulfillment of a degree. See also Masters thesis. |
| Proceedings    | Proceedings        | The proceedings of a conference. |
| Techreport     | Technical Report   | A general technical report that does not fit the other Technical report types. |


### 🗝️ Citation keywords

In JabRef you can optionally enter keywords to ensure your entry is findable.


#### Follow LOTO for entering keywords:

1. 🌐 **L**ocality (e.g. Cathedral Peak; uKhahlamba Drakensberg; Kwazulu-Natal)
Remember nearly exclusively all locations are nested within a greater area. Be sure to include these greater areas in your keywords.
2. 🎓 C**o**vered disciplines (e.g. soil science; geology; climate; hydrology; vegetation ecology)
3. 🤔 **T**opic (e.g. stream-flow; fire; land degradation; niche modelling; evapotranspiration)
4. 👀 **O**bject of attention (e.g. a specific vegetation type, river, earth system component etc)

#### Further considerations for keywords:    
- Check spelling.
- Enter multiple keywords for each of the four letter keyword guide above.  
- Too little keywords OR too many keywords will mean an unsearchable reference. 
- Note that these keywords should not necessarily be the same as a journal article’s keywords.

### Author names
BibTeX handles a variety of different author entry types. Some examples are shown below.  

| Input in JabRef                                      | Meaning / Interpretation                          | Notes |  
|:---|:---|:-------|  
| `Thando Nkosi` | Firstname Lastname | Normal author format. |  
| `Mhlangu, Thami` | Lastname, Firstname | Preferred for complex names. |  
| `Gordijn, P.~J.` | Lastname, Initials | Include spaces between initials. Use the tilde symbol (~) for consistent spacing between initials.|  
| `Paul J. Gordijn` | Firstname Middlename Lastname | JabRef parses this correctly. |  
| `Mkhize, Sibusiso and Smith, Jane` | Two authors | Separate authors with **and**. |  
| `Gordijn, Paul and Smith, Jane and Mohammed, Aisha` | Three authors | “and” between every author. |  
| `{{Ezemvelo KwaZulu-Natal Wildlife}}` | Corporate author  | Double curly braces preserve formatting and assist with automatic abbreviations. This would be abbreviated to EKNW. |  
| `{{South African National Biodiversity Institute}}` | Corporate author | Required for organisations. |  
| `{van der Merwe}, Johan` | Particle + Lastname + Firstname | Particle stays lowercase. <br> Curly brackets enforce capitalization or lack thereof.|  
| `{de la Cruz}, Maria` | Particle + Lastname + Firstname | Correct BibLaTeX handling. |  
| `Du Plessis, André` | Capitalised particle (official form) | Some Afrikaans names use uppercase. |  
| `Anonymous` | Literal “Anonymous” author | Use only if publication states it. |  
| *(empty)* | No author field | Leave blank if work has no author. |  

## Citation key 🟰 Unique Identifier

Citation keys serve as the unique identifier for each BibTeX entry. If the identifier changes the link or reference gets broken. For example, changing the citation key can break and disable the automatic compilation of a document's bibliography when using cite-while-you-write add-ons and connections. JabRef also uses the citation key to name files; a neat way of linking files and reference metadata.

BSPI standardises on citation key format to avoid such complications. To use BSPI citation key standards:

1. 'Top menu' `'Library'` ➡️ `'Library properties'`,
1. Go to the `'Citation key patterns'` tab,
1. Copy this text,  
    `[auth:lower][year][shorttitleINI:lower]-[alpha]`  
and paste as the default key pattern (hitting 'Return' after paste) then saving. 
    
    Here is what happens...  
    a. `[auth:lower]` takes the first author's last name (and convert to lower case),  
    b. `[year]` - self explanatory,  
    c.  `[shorttitleINI:lower]` makes three letter abbreviation of the title's first three words.  
    d. `-[alpha]` adds an alphanumeric suffix where duplicates are detected,  
    e. ✅ JabRef concatenates this all together to form the citation key - see below.

1. Once this default has been set you are ready to generate citation keys using the 'top menu' `'Edit'` ➡️ `'Generate citation keys'` functionality.  
**NB!** This action will overwrite any existing citation keys.

When you 'drag-n-drop' a file onto an entry the file will be saved to the default 'file' directory (see DB folder structure below) and renamed using the citation key as a name.



## 📁 BSPI reference DB folder structure

The standardisation of the reference DB's directory shown below.
```
├── 📁 files                        # contains softcopy documents & data
│   ├── 📕 collins2018fsp.pdf       # note examples of using the citation key
│   ├── 📦 collins2018fsp.zip       # to name and organise reference documents.
│   ├── 📄 goodman2010bcp.ppt
│   ├── 🌐 ndlovu2025ekw.html
│   ├── 📕 hanson2025scp.pdf
│   └── 📕 wilkinson2016tfg.pdf
├── 📁 imgs                         # stores ekznw120.ng logo for markdown readme
├── 📁 scripts                      # miscellaneous scripts for DB management
│   ├── 📁 map_handler              # script and csv for chaing rmd and tex
│   │   │                           # document citation keys
│   │   ├── 📄 map.csv
│   │   └── 📄 update_md-tex_keys.r
│   ├── 📄 bib_manage.r             # for adhoc DB management
│   └── 📄 md_to_html.sh            # bash script to convert md to html
├── 📁 sync                         # rclone and other sync scripts --- for BSPI
│                                   # DB management only
├── 📄 bspi_lib.bib                 # reference database
├── 🌐 readme.html                  # readme web file - geneerated by 
├── 📝 readme.md                    # readme markdown file
└── 📕 readme.pdf                   # readme pdf doc
```
| Folder   | Description |
|--|-------------|
|📁files | Standard directory for reference documents. When files are 'drag-n-dropped' onto a citation in JabRef they are automatically stored in the libraries (reference DB) default location for files. <br> Set the default file location by 'top menu' `'Library'` ➡️ `'Library properties'` ➡️ Enter the path e.g., `./files` for the above scenario.|
|📁scripts | General scripts BSPI uses to modify the BibTeX files. No need for users to use this - deleting this will not break the library functionality.|
|📁sync | Script for making backups of the data using Rclone. Don't worry about this if you don't use Rclone. |

## 📁 Cite-while-you-write

In MS Word and Google docs there are a number of add-ons that you can use for citations.

| Word processor   | Cite-while-you-write integration | Notes |
|----|---| --------- |
| Microsoft word desktop | [Docear4Word](https://docear.org/software/add-ons/docear4word/download/) | Good integration with BibTeX. |
| Microsoft word desktop| [BibTeX4Word](http://www.ee.ic.ac.uk/hp/staff/dmb/perl/index.html) | Good integration with BibTeX. Can be challenging to set up. |
| Microsoft word web application| [Mendeley](https://www.mendeley.com/) | Good integration with converted BibTeX files. Need to manage conversion between Mendeley and BibTeX. |
| Google Docs web application| [Zotero](https://www.zotero.org/) | Okay integration with converted BibTeX files. Need to manage conversion between BibTeX and Zotero format. Zotero also has an MS Word add-on.  |
| OpenOffice Writer | [Writer](https://www.openoffice.org/) | Good integration with no add-ons. |
| Libre Office Writer | [Writer](https://www.libreoffice.org/) | Good integration with no add-ons. Comes pre-installed on default Ubuntu installation. |
| Quarto | [Quarto](https://quarto.org/docs/get-started/hello/rstudio.html) | Excellent integration with BibTeX. Knowledge of markdown coding needed. |
| RMarkdown | [RMarkdown](https://quarto.org/docs/get-started/hello/rstudio.html) | Excellent integration with BibTeX. Knowledge of markdown coding needed. |
| Bookdown | [Bookdown](https://www.bookdown.org) | Excellent integration with BibTeX. Good for complex or larger documents. Knowledge of markdown coding needed. |
| LaTeX | [LaTeX](https://www.latex-project.org/) | Excellent integration with BibTeX. Best for complex or larger documents. Most customizable. Need to learn LaTeX document structure and coding. |
