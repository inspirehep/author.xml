# INSPIRE Collaboration Author Lists
### The author.xml file - introduction, specification, creation
1. [Introduction](#introduction)    
    - [Partners in the author.xml project](#partners)
2. [A Brief description of author.xml file](#briefdescription)    
    - [Why XML for author.xml file?](#whyxml)
    - [What are the advantages of author.xml file?](#whatadvantages)
3. [What do I need to get started?](#needtogetstarted)
4. 
5. 





3. [ Usage tips](#usage)

<a name="introduction"></a>
## Introduction
Submitting the complete author information with a document can be a daunting feat, especially when there might be hundreds or even thousands of authors. INSPIRE, the American Physical Society and arXiv.org have created a template to guide you when you submit information about the authors. In that way, the information that is communicated will be precise and univerally understood, and, as the saying goes, we will all be "on the same page". 
When submitting your document, you should also submit a file called author.xml. This file is written in the XML language and should contains all the authors' information. Follow the file schema that is described below, it will aid you to provide your author.xml for the document.

<a name="partners"></a>
## Partners in the author.xml project
**Information Services**

 - arXiv.org
 -  INSPIRE
 
**Publishers**  

 - American Physical Society

**Collaborations**  

 - Pierre Auger Observatory
 - Brookhaven STAR
 - CERN ALICE
 - CERN ATLAS
 - CERN CMS
 - CERN LHCb
 - Daya Bay
 - DUNE
 - Fermilab CDF
 - Fermilab D0
 - Fermilab LArIAT
 - Fermilab MicroBooNE
 - IHEP BESIII
 - JUNO
 - KEK T2K
 - NEMO
 - ZEUS

<a name="briefdescription"></a>
### A Brief description of author.xml file
The author.xml file contains the following information:
 - Which paper does the author.xml correspond to?
 - The collaboration it represents.
 - The institutions participating in the collaboration.
 - The authors, with their affiliations and ID numbers.

This information is meant to automate the process of publishing a document electronically, without the need for human intervention.

<a name="whyxml"></a>
### Why XML for author.xml?
From the introduction, you will have gathered that the authors' file, author.xml, uses the language XML. XML stands for eXtensible Markup Language. Markup implies that there is a specific format structure, hence your content is entered according to that orgnised model. You will enter your data for the XML elements between tags that will help you follow the structure. The term 'eXtensible' means that we decided what the XML elements should be called. The elements in the author.xml schema have been defined and agreed upon by us. 

XML was designed to store and transport data, and it is both human- and machine-readable. This perfectly satisfies our requirements for the language used to read and write the author.xml files. Note that XML files are data files, the information doesn't do anything on its own.

<a name="whatadvantages"></a>
### What are the advantages of author.xml file?
These are the advantages of using an author.xml file when you submit your document:
 - Paper processing speed
Using an author.xml file allows INSPIRE to automatically add all authors
and affiliations so they show up in the database with minimal delay and
with as few errors as possible.

 - Accurate author information
attribution of credit
The author.xml file, with all authors identified by an
INSPIRE ID number,
will be used by publishers such as the APS in producing their journal articles.
It will also be used by other database providers covering the scientific literature.
Providing accurate information about the authors results in more accurate
publication lists and citation counts as well as more comprehensive
search results.

 - Automatic generation
Given the XML file, an auto-generation process using xslt
can be used to generate the author list for the paper in
the desired LaTeX format.

<a name="needtogetstarted"></a>
### What do I need to get started?




<a name="usage"></a>
## 2. Usage tips
sometext
<a name="sponsors"></a>
## Who sponsors?
sometext
![image](images/Angus-Satigny.jpg)

[XML example - minimal file](example-files/example-minimal.xml)

[XML example - full-data file](https://github.com/inspirehep/author.xml/blob/abchan-paragraph/example-files/example-fulldata.xml)

[XML example - multicollaboration file](https://raw.githubusercontent.com/inspirehep/author.xml/abchan-paragraph/example-files/example-multicollaboration.xml)
