# INSPIRE Collaboration Author Lists
### The author.xml file - introduction, specification, creation
1. [Introduction](#introduction)    
    - [Partners in the author.xml project](#partners)
2. [A Brief description of the author.xml file](#briefdescription)    
    - [Why XML for the file?](#whyxml)
    - [Quick summary of steps](#howdoesitwork)
    - [What are the advantages of an author.xml file?](#whatadvantages)
3. [What do I need to get started?](#needtogetstarted)
    - [What is the workflow?](#workflow)
    - [Downloads](#downloads)
    - [Examples of author.xml files](#examplefiles)
    - [Where do I get the information needed for my input?](#infoneeded)
    - [Links](#links)
4.  [**How do I fill in my author.xml file?**](#fillinauthorxml)    
    - [Template author.xml](#template)
    - [Table explaining XML elements](#tablexmlelements) 
5.  [How do I validate my author.xml file?](#authorxmlvalidate)
6.  [Can I convert my author.xml file to another format?](#authorxmlconvert)

7.  
8.  template - detailed description







6.  
7. 
8. 

8. 
9. 





3. [ Usage tips](#usage)

<a name="introduction"></a>
## Introduction
Submitting the complete author information with a document can be a daunting feat, especially when there might be hundreds or even thousands of authors. INSPIRE, the American Physical Society and arXiv.org have created a template to guide you when you submit information about the authors. In that way, the information that is communicated will be precise and univerally understood, and, as the saying goes, we will all be "on the same page". 
When submitting your document, you should also submit a file called author.xml. This file is written in the XML language and should contain all the authors' information. Follow the file schema that is described below, it will aid you to provide your author.xml file for the document.

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
### A Brief description of the author.xml file
The author.xml file contains the following information:
 - Which paper does the author.xml correspond to?
 - The collaboration it represents.
 - The institutions participating in the collaboration.
 - The authors, with their affiliations and ID numbers.

This information is meant to automate the process of publishing a document electronically, without the need for human intervention.

<a name="whyxml"></a>

### Why XML for author.xml?
From the introduction, you will have gathered that the authors' file, author.xml, uses the language XML. XML stands for eXtensible Markup Language. Markup implies that there is information about the data structure, you should enter your data between tags, and according to a specific format. The term 'eXtensible' means that we decide what the tags should be called - the tags in the author.xml schema have been defined and agreed upon, so don't go adding your own. 


XML was designed to store and transport data, and it is both human- and machine-readable. This perfectly satisfies our requirements for the language used to read and write the author.xml files. Note that XML files are data files, the information doesn't do anything on its own.

<a name="howdoesitwork"></a>
### Quick summary of steps
 - You can produce a tailored output from your collaboration’s author data by following the XML template.
 -  Once completed, the file can be tested and validated through the validation files included in the download.
 - When your file passes the test, please submit your file along with your next submission to arXiv in the .tar ball.
 - If you encounter any problem and need assistance, or if you are unable provide the information required, please contact us:
authors@inspirehep.net

<a name="whatadvantages"></a>
### What are the advantages of the author.xml file?
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
Given the XML file, an auto-generation process using xslt can be used to generate the author list for the paper in the desired LaTeX format.

<a name="needtogetstarted"></a>
## What do I need to get started?


<a name="workflow"></a)
### What is the workflow?
1. Download package to have necessary template and files
1. Gather the information that you will need to fill in the author.xml file
1. Fill in the values for the XML elements in the template
1. Validate the file, using a 'validator'
1. You have the option of converting the xml file to another format

<a name="downloads"></a>
### Downloads
 - .tar ball (includes the template, an example and a .dtd file for validation)
 - [.zip file](downloads/authors_xml.zip) - includes the template, an example and a .dtd file for validation
 - authors.xsd XML schema defintion file (inluded in tar and zip)
 - author.dtd XML document type defintion file (inluded in tar and zip)

<a name="examplefiles"></a>
### Examples of author.xml files

[XML example - minimal file](https://raw.githubusercontent.com/inspirehep/author.xml/abchan-paragraph/example-files/example-minimal.xml)

[XML example - full-data file](https://raw.githubusercontent.com/inspirehep/author.xml/abchan-paragraph/example-files/example-fulldata.xml)

[XML example - multicollaboration file](https://raw.githubusercontent.com/inspirehep/author.xml/abchan-paragraph/example-files/example-multicollaboration.xml)



<a name="infoneeded"></a>
### Where do I get the information needed for my input?
When you come to fill in some of the XML elements in author.xml, you will need have some information that is obtained elsewhere.

    • INSPIRE ID Numbers for a list of authors
In your role as maintainer of the collaboration’s author list, you have two options to acquire INSPIRE ID Numbers for authors:
        1. Send a list of names and email addresses or the xml file without INSPIRE IDs to
authors@inspirehep.net and we will return this list enriched with all the INSPIRE ID Numbers for the authors.
These INSPIRE IDs can then be integrated into your author database and delivered as part of your next author list.
        2. Provide the collaboration’s internal ID Numbers of the respective person directly in the author.xml file.
If you choose this option, please ensure these IDs are persistent and unique within your collaboration.
This way, no additional information is needed in the collaboration’s author database–we’ll
match up the internal IDs with INSPIRE ID Numbers and make sure the authors always have the correct ID.
      Motivation for #1: The INSPIRE IDs will be recognized by publishers and other databases or repositories
and can also be shared with the authors, who may like to use them for searching and for papers they might write independently.
Motivation for #2: Easiest approach for the collaboration. However, this will only work for INSPIRE and will not be shared with
other parties.
      In any case, once the author.xml is submitted and checked by the INSPIRE service team, missing IDs will be
assigned accordingly and created if necessary. Additional information on INSPIRE ID numbers can be found at
INSPIRE ID NUMBERS.
    • INSPIRE ID Number for an individual
The HEPNAMES
database may be utilized to find the right ID for an individual. The INSPIRE ID Number will be on the author’s record page.
If the individual has an entry in HEPNAMES, but not an INSPIRE ID Number, a number will be
assigned upon  of the record. If the individual is not in HEPNAMES,
you can simply ask the individual to
add a record for him/herself. An INSPIRE ID number will be assigned automatically.
    • Identification of affiliations by their Internet domain
Internet domains provide a unique, universally-understood way to list an institution. Their hierarchical structure enables one to
choose the required level of granularity, either at the institutional or departmental level. For example:
        1. damtp.cam.ac.uk – for the Department of Applied Mathematics and Theoretical Physics (DAMTP)
        2. cam.ac.uk – for the University of Cambridge in general
        
<a name="Links"></a>
### Links
ORCID Initiative
INSPIRE
HEPNames
HEPInstitutes
FOAF Project

<a name="fillinauthorxml"></a>
## How do I fill in my author.xml file?
The author.xml file has been designed for collaborations with more than 10 authors. An updated author.xml file should be included with each submission to arXiv. The collaboration’s XML file will contain information on each author, such as name, affiliation and INSPIRE ID Number. Descriptions of the template items are listed below the template.

<a name="template"></a>
### Template author.xml
<?xml version="1.0" encoding="UTF-8"?>

<!DOCTYPE collaborationauthorlist SYSTEM "http://inspirehep.net/info/HepNames/tools/authors_xml/author.dtd">

<collaborationauthorlist
   xmlns:foaf="http://xmlns.com/foaf/0.1/"
   xmlns:cal="http://inspirehep.net/info/HepNames/tools/authors_xml/">
   
   <cal:creationDate></cal:creationDate>
   <cal:publicationReference></cal:publicationReference>
   
   <cal:collaborations>
      <cal:collaboration id="c1">
         <foaf:name></foaf:name>
         <cal:experimentNumber></cal:experimentNumber>
      </cal:collaboration>
   </cal:collaborations>
   
   <cal:organizations>
      <foaf:Organization id="a1">
         <cal:orgDomain>http://</cal:orgDomain>
         <foaf:name></foaf:name>
         <cal:orgName source=""></cal:orgName>
         <cal:orgStatus collaborationid="c1"></cal:orgStatus>
         <cal:orgAddress></cal:orgAddress>
         <cal:group with=""/>
      </foaf:Organization>
   </cal:organizations>
   
   <cal:authors>
      <foaf:Person>
         <foaf:name></foaf:name>
         <foaf:givenName></foaf:givenName>
         <foaf:familyName></foaf:familyName>
         <cal:authorNameNative></cal:authorNameNative>
         <cal:authorSuffix></cal:authorSuffix>
         <cal:authorStatus></cal:authorStatus>
         <cal:authorNamePaper></cal:authorNamePaper>
         <cal:authorNamePaperGiven></cal:authorNamePaperGiven>
         <cal:authorNamePaperFamily></cal:authorNamePaperFamily>
         <cal:authorCollaboration collaborationid="c1" position="" />
         <cal:authorAffiliations>
            <cal:authorAffiliation organizationid="a1" connection="" />
         </cal:authorAffiliations>
         <cal:authorids>
            <cal:authorid source=""></cal:authorid>
         </cal:authorids>
         <cal:authorFunding></cal:authorFunding>
      </foaf:Person>
   </cal:authors>
</collaborationauthorlist>

This is the original [template author.xml](https://raw.githubusercontent.com/inspirehep/author.xml/abchan-paragraph/template/template-author.xml)
In order to help you [fill in the XML values](https://raw.githubusercontent.com/inspirehep/author.xml/abchan-paragraph/template/template-with-my_value_here), those fields are denoted by 'my_value_here'. 

<a name="tablexmlelements"></a>
### Table explaining XML elements
At the beginning there are XML declaration elements. These are fixed.

The XML elements for which you have to provide a value are explained in the table.


<a name="authorxmlvalidate"></a>
## How do I validate my author.xml file?

<a name="authorxmlconvert"></a>
## Can I convert my author.xml file to another format?


![image](images/Angus-Satigny.jpg)


