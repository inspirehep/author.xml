# INSPIRE Collaboration Author Lists
### The author.xml file - introduction, specification, creation
1. [Introduction](#introduction)
    + [Why XML for author.xml file?](#whyxml)
    - [What are the advantages of author.xml file?](#whatadvantages)

3. [ Usage tips](#usage)

<a name="introduction"></a>
## 1. Introduction
Submitting the complete author information with a document can be a daunting feat, especially when there might be hundreds or even thousands of authors. INSPIRE, the American Physical Society and arXiv.org have created a template to guide you when you submit information about the authors. In that way, the information that is communicated will be precise and univerally understood, and, as the saying goes, we will all be "on the same page". 
When submitting your document, you should also submit a file called author.xml. This file is written in the XML language and should contain all the authors' information. Follow the file schema that is described below, it will aid you to provide your author.xml file for the document.

<a name="whyxml"></a>
### Why XML for author.xml?
From the introduction, you will have gathered that the authors' file, author.xml, uses the language XML. XML stands for eXtensible Markup Language. Markup implies that there is information about the data structure, you should enter your data between tags, and according to a specific format. The term 'eXtensible' means that we decide what the tags should be called - the tags in the author.xml schema have been defined and agreed upon, so don't go adding your own. 

XML was designed to store and transport data, and it is both human- and machine-readable. This perfectly satisfies our requirements for the language used to read and write the author.xml files. Note that XML files are data files, the information doesn't do anything on its own.

<a name="whatadvantages"></a>
### What are the advantages of author.xml file?
These are the advantages of using an author.xml file when you submit your document:
 - Paper processing speed

 - Accurate author information

 - Automatic generation



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
