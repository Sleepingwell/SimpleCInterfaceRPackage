## Building the R package

- On Windows you will probably need to install the appropriate version of [Rtools](http://cran.r-project.org/bin/windows/Rtools/) for your version of R. On linux, I think everything you need should just be there.
- On Windows, make sure the appropriate paths are on the system path. I use the command:
    <pre><codeblock>set PATH=C:\R\R-2.14.1\bin;C:\Rtools\bin;C:\Rtools\MinGW\bin;C:\Rtools\MinGW64\bin;%PATH%</codeblock></pre>
from a batch file on my machine.
- from the directory above the simplexample directory, run the command:
    <pre><codeblock>R CMD INSTALL --build simplexample</codeblock></pre>
to build the windows version (simplexample\_&lt;version&gt;.zip) of the package, and
    <pre><codeblock>R CMD build simplexample</codeblock></pre>
to build the gzip version (simplexample_&lt;version&gt;.gz) of the package.

## Notes

- The version number is specified in the DESCRIPTION file in the top level folder.
- To learn more about packages, look at the PDF document accessible under Help -> Manuals (in PDF)-> "Writing R Extensions" from the R GUI. If you can't find it on your local system, Google for "R-exts.pdf"... or just go [here](http://cran.r-project.org/doc/manuals/R-exts.pdf).
