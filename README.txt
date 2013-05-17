Permit Applications                                             Stuart Lynne
                                                Fri Mar 01 11:26:54 PST 2013 


0. Overview
***********

This directory contains the files supporting permit applications for EV races
in Abbotsford and the Township of Langley.


The typical application consists of a single PDF constructed from numerous
files. Some are specific to each series and some are carried forward from
series to series.

    - Letter to mayor
    - Series and municipality specific overview
    - a set of venue specific files
        - venue overview
        - venue map
    - sample notice to residents
    - traffic guidelines
    - COI


1. Letter to mayor
******************

See examples. These outline the dates requested and the overall experience
and number of years the series has been run. These need to customized for
each application made.

2. Series Overview
******************

This outlines the series, specifically the venues, dates, names of the organizer
and race director.

3. Venue specific files.
***********************

This consists of a document outlining the specific information about each race
venue. This should include parking, start and finish locations and a table of
the various intersections with specific traffic control required.

The second document is a visio file which has a screen capture image of the 
venue with the locations of the tcp, marshal, start, finish, parking and warning
locations.

4. Notice to resident
*********************

See sample This can be updated for the series. Does not need to be specific 
for each date.

5. Traffic Guidelines
*********************

This is an overview document outlining the specific guidelines EV will use to
setup traffic control. This may need periodic updating.

6. COI
******

Certificate of Insurance. This is from Cycling BC and is typically issued yearly.


7. Series Specific
******************

For each permit (or series) simply construct a .txt file containing the names
of the pdf files that are required.

E.g. SSAbbotsford2013.txt:

    Abbotsford/SS-2013-Abbotsford-Letter.pdf
    Abbotsford/SS-2013-Abbotsford-Overview.pdf
    TCP/Aldergrove-Short-RR.pdf
    Map/Aldergrove-Short-RR.pdf
    TCP/RiverRoad-RR.pdf
    Map/RiverRoad-RR.pdf
    TCP/Bradner-RR.pdf
    Map/Bradner-RR.pdf
    Abbotsford/SS-Sample.pdf
    EV/EV-COI-2013.pdf
    EV/EV-Traffic-Guidelines.pdf


8. Tools
********

For editing:

    - libreoffice
    - Visio to edit the .vsd map files

The following are required in either Cygwin or Linux:

    - Make
	- unoconv 
	- pdfunite 
    - libreoffice (or possibly openoffice)


9. Creation
***********

First update or create the various files that will be required. Typically this 
will mean creation of:

    - letter to mayor
    - series overview
    - Series txt file

Then update all of the maps or other files if needed.

From the command line:

    make clean
    make

This should create a .pdf file for all doc and vsd files and then for each .txt file.

View the PDF file for the series (same name as the .txt file but with .pdf extension.) 
to ensure that all components are there and properly formatted.


10. Submission
**************

That file should be printed and submitted with the HUP application.

Then once contacted by the Engineering department forward them copies of the PDF. 

If changes are required, updated versions should have a new date.

E.g. 
    SSTOL2013.pdf
    SSTOL2013-2013-02-18.pdf

etc.


