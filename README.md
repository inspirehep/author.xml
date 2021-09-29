⚠️ **This documentation is still work-in-progress and shouldn't be relied on**

# INSPIRE Collaboration Author Lists
### The author.xml file - introduction, specification, creation
1. [Introduction](#introduction)    
    - [Background and motivation](#background)
    - [Partners in the author.xml project](#partners)
2. [A Brief description of the author.xml file](#briefdescription)    
    - [Why an XML file for the author list?](#whyxml)
    - [What are the advantages of an author.xml file?](#whatadvantages)
3. [What do I need to get started?](#needtogetstarted)
    - [How do I get the author.dtd file?](#getauthordtd)
    - [How do I get the author.xml template file?](#getauthorxml)
    - [What terms should I know before starting?](#knowterms)
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






3. [ Usage tips](#usage)

<a name="introduction"></a>
## Introduction
<a name="background"></a>
## Background and motivation
Together, INSPIRE, the American Physical Society and arXiv.org have created a template file that you are recommended to use when you provide information about the authors for the submission of your paper. Not only will the authors' information be precise and universally understood, but author information linking to professional information — affiliations, grants, publications, peer review, and more will get exposed. Let's all be "on the same page" and ensure that authors get recognition for their contributions.

If the author list for your collaboration has 10 or more authors, we recommend that when submitting your document, you also submit a file called author.xml. This template file is obtained from a downloaded package. Using the template file as your guide, you fill in the fields such as the authors' details, collaboration details, and so on. On completion, you pass it through a validator to make sure the file is good to go. After validation, your author.xml file is ready for submission. 

Large collaborations with hundreds and even thousands of authors are already using the author.xml file to enable cataloguers and automated processes to glean complete, accurate information on authors. Get on board so that authors get the appreciation and exposure they deserve!

<a name="partners"></a>
## Partners in the author.xml project
**Information Services**

 - [arXiv.org](https://arxiv.org/)
 - [INSPIRE](https://inspirehep.net/)
 
**Publishers**  

 - [American Physical Society](https://journals.aps.org/)

**Collaborations**  

 - [Pierre Auger Observatory](https://www.auger.org/)
 - [Brookhaven STAR](https://www.star.bnl.gov/)
 - [CERN ALICE](https://alice-collaboration.web.cern.ch/)
 - [CERN ATLAS](https://atlas.cern/)
 - [CERN CMS](https://cms.cern/)
 - [CERN LHCb](https://lhcb-public.web.cern.ch/)
 - [Daya Bay](http://dayabay.ihep.ac.cn/twiki/bin/view/Public/)
 - [DUNE](https://www.dunescience.org/)
 - [Fermilab CDF](https://www.fnal.gov/pub/tevatron/experiments/cdf.html)
 - [Fermilab D0](https://www.fnal.gov/pub/tevatron/experiments/dzero.html)
 - Fermilab LArIAT()
 - [Fermilab MicroBooNE](https://microboone.fnal.gov/)
 - [IHEP BESIII](http://bes3.ihep.ac.cn/)
 - [JUNO](http://juno.ihep.cas.cn/)
 - [KEK T2K](https://t2k-experiment.org/)
 - [NEMO](http://nemo.in2p3.fr/nemow3/)
 - [ZEUS](https://www-zeus.desy.de/)

<a name="briefdescription"></a>
## A Brief description of the author.xml file
From [Background and motivation](#background), above, you will have gathered that the author list file, author.xml, uses the language XML. This author.xml file should include the following information, and is provided by you:
 - Which paper does the author.xml correspond to?
 - The collaboration it represents.
 - The institutions participating in the collaboration.
 - The authors, with their affiliations and ID numbers.

The information will allow us to automate the process of publishing the document electronically, without the need for human intervention.

<a name="whyxml"></a>
### Why an XML file for the author list?
XML stands for eXtensible Markup Language. Markup implies that there is information about the data structure i.e. your data (a.k.a. XML elements) will be enclosed between tags that describe what type of data it is. You should enter your data between the tags according to a specific format. 

The term 'eXtensible' means that we decide what the tags should be called - the tags in the author.xml have been defined and agreed upon, so don't go adding your own. 

XML was designed to store and transport data, and it is both human- and machine-readable. Note that XML files are data files, and that the information doesn't do anything on its own.

 

<a name="whatadvantages"></a>
### What are the advantages of the author.xml file?
These are the advantages of using an author.xml file when you submit your document:
 - Paper processing speed
 
Using an author.xml file allows INSPIRE to automatically add all authors
and affiliations so they show up in the database with minimal delay and
with as few errors as possible.

 - Accurate author information and attribution of credit
 
The author.xml file, with all authors identified by an INSPIRE ID number, will be used by publishers such as the APS in producing their journal articles. It will also be used by other database providers covering the scientific literature. Providing accurate information about the authors will result in more accurate publication lists and citation counts in addition to comprehensive search results.

 - Automatic generation
 
Given the XML file, an auto-generation process using xslt (stands for Extensible Stylesheet Language Transformations) can be used to generate the author list for the paper in the desired LaTeX format.

<a name="needtogetstarted"></a>
## What do I need to get started?
1. Get the file author.dtd, go to [How do I get the author.dtd file?](#getauthordtd). This file contains the rules that your author.xml file will be checked ("validated") against.
1. Get the template file author.xml, go to [How do I get the author.xml template file?](#getauthorxml). This is the template file in which you will fill in the meta-data for the authors in your collaboration.
1. Gather the information needed for some of the data fields for your author.xml file, go to [Where do I get the information needed for some of the fields?](#infoneeded) to see how to get the ORCID identifier, etc
1. After you have filled in the fields of your author.xml, you should validate the file against the author.dtd file (mentioned in 1.). Go to [How do I validate my author.xml file?](#validate).
1. Following validation, you will submit the author.xml file as part of your submission to arXiv in a .tar ball. The instructions are in [arxiv.org](https://arxiv.org/help/tar). 
1. Please contact us at authors@inspirehep.net if you need assistance.  

<a name="getauthordtd"></a>
### How do I get the author.dtd file?

<a name="getauthorxml"></a>
### How do I get the author.xml template file?

<a name="infoneeded"></a>
### Where do I get the information needed for some of the fields?

<a name="validate"></a>
### How do I validate my author.xml file?

    
<a name="knowterms"></a>
### What terms should I know before starting?
You might come across these terms, and whilst you don't actually need to know what they all mean, if you are interested, let's quickly touch on some of the XML-related names that you might encounter.

 - **.xml** -> A .xml file is an **Extensible Markup Language** (XML) file. An XML file is just a plain text file containing information wrapped in tags. This information, called XML elements, is enclosed in meaningful, custom tags which describe the structure and other features of the document. An xml file does not DO anything. The file is used to store and transport data. 

 - **XML element** -> XML elements can be defined as the building blocks of an XML file. Elements can behave as containers to hold text, elements, attributes, media objects or all of these. For our purposes, we just need to know that XML elements are the data that we need to input.

A document type definition file (.dtd), which is provided for you, is used to specify what elements may be used in the XML document, the order of the elements, the number of occurrences of each element, and finally the content and datatype of each element and attribute.
 - **.dtd** -> DTD is an acronym for **Document Type Definition**. A .dtd file is a text file that specifies the rules governing the elements and attributes used in the corresponding XML document. 
 
#### Well formed XML document
An XML document is said to be well formed if it satifies the syntax rules. These rules are:

 - XML documents must have a root element (i.e. one sole parent element for all the XML elements in the document)
 - XML elements must have a start and end tag
 - XML tags are case sensitive
 - XML elements must be properly nested
 - XML attribute values must be quoted

#### Valid XML Documents
A "well formed" XML document is not the same as a "valid" XML document.

A "valid" XML document must already be well formed, but in addition, it must conform to a document type definition (the .dtd, or the .xsd file). 

With XML, errors in documents are not tolerated for the simple reason that XML processing programs are foreseen to be small and fast i.e the programs should not be doing error-checking and fixes.

<a name="examplefiles"></a>
### Examples of author.xml files

[XML example - minimal file](https://raw.githubusercontent.com/inspirehep/author.xml/abchan-paragraph/example-files/example-minimal.xml)

[XML example - full-data file](https://raw.githubusercontent.com/inspirehep/author.xml/abchan-paragraph/example-files/example-fulldata.xml)

[XML example - multicollaboration file](https://raw.githubusercontent.com/inspirehep/author.xml/abchan-paragraph/example-files/example-multicollaboration.xml)

[XML example - institutional groups](https://raw.githubusercontent.com/inspirehep/author.xml/abchan-paragraph/example-files/example-institutional-groups.xml)

<a name="infoneeded"></a>
### Where do I get the information needed for my input?
When you come to fill in some of the XML elements in author.xml, you will need have some information that is obtained elsewhere.

**WHAT DO WE WANT TO BE USED HERE?**

    • INSPIRE ID Numbers for a list of authors
In your role as maintainer of the collaboration’s author list, you have two options to acquire INSPIRE ID Numbers for authors:
1. Send a list of names and email addresses or the xml file without INSPIRE IDs to authors@inspirehep.net and we will return this list enriched with all the INSPIRE ID Numbers for the authors.
These INSPIRE IDs can then be integrated into your author database and delivered as part of your author list.
1. Provide the collaboration’s internal ID Numbers of the respective person directly in the author.xml file.
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
***?? DO WE NEED THIS?? paragraph***
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
At the beginning of author.xml there is the XML declaration. This describes the version, encoding, and declares that the document needs information from an external document type definition (DTD), for its content.

`
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE collaborationauthorlist SYSTEM "http://inspirehep.net/info/HepNames/tools/authors_xml/author.dtd">
`

Do not remove any part of the author.xml template. Instead, edit the author.xml template by filling in **your value** for the element or attribute when you see **REQUIRED** (in bold) or **OPTIONAL** (in bold):
|`XML Element/ContainerElement`|`Element/Attribute/ContainerElement. **Required/Optional**`|
|---|---|
|`<collaborationauthorlist>`|Element `<collaborationauthorlist>` [required] - this is the root element |
|`xmlns:foaf="http://xmlns.com/foaf/0.1/"`| [required] - this namespace with prefix 'foaf' is used only to differentiate between identical element/attribute names |
|`xmlns:cal="http://inspirehep.net/info/HepNames/tools/authors_xml/"`| [required] - this namespace with prefix 'cal' is used only to differentiate between identical element/attribute names |
|`<cal:CreationDate>`|Element `<cal:CreationDate>` **REQUIRED** - date of creation of this author.xml file|
|`<cal:publicationReference>`|Element `<cal:publicationReference>` **REQUIRED** - an internal report number an arXiv number </br> **or** a collaboration’s internal document number </br> **or** an ISBN </br> **or** a DOI </br> **or** a persistant web destination </br> **or** anything that identifies the referenced document.</br>If no immediate identifier, the title can be used|
|`<cal:collaboration>`|`<cal:collaboration>` **REQUIRED** - container element with information about the collaboration.</br> Attribute `“id”`: **OPTIONAL** - is only needed if two (2) or more collaborations publish together. Typically, it is a letter+sequential number, starting at “c1”. </br> Element `<foaf:name>`: **REQUIRED** - name of the collaboration. </br> Element `<cal:experimentNumber>` **OPTIONAL** - number assigned by laboratory to the experiment, if present|




   
|`XML Element/Attribute/ContainerElement`|`Description. Required/Optional`|
|---|---|
|`foaf:Organization`|`foaf:Organization` **REQUIRED** - container element with information about an organization with which authors are affiliated. There may be one or more organizations within the <cal:organizations> container, and each organization is identified by the “id” attribute. </br>Attribute `“id”` **REQUIRED** - typically, it is a letter+sequential number, starting at “a1”, used to denote the author’s institution in this particular author.xml file so as to attach authors to the institution.</br>Element <`cal:orgDomain`> **OPTIONAL** - internet domain of the institution. The domain should be detailed enough to unambiguously determine the institution if there are distinct locations throughout the nation, e.g., pv.infn.it rather than just infn.it. If desired, this can go to the department/research-group level.</br>Element <`foaf:name`> **REQUIRED** this is the name of the organization as it will appear on the document.</br>Element <`cal:orgName`> **OPTIONAL** - this element also defines the name of the organization. Depending on where this name originates from, the source attribute can be used. The element content shall be only the name of the respective institute. Location information, if not part of the name, may be stated in the orgAddress element.</br>Attribute `“source”` **OPTIONAL** - (Defaults to “INTERNAL”) enables you to use either the INSPIRE (a.k.a. INSPIRE-ICN) form of the institution’s name or your own INTERNAL form.</br> Element `<cal:orgStatus>` **OPTIONAL** - status of the organization within the collaboration. Typically this would be either “member” or “nonmember.”</br>Attribute `“collaborationid”` **OPTIONAL** - enables you to specify which exact collaboration this organization is attached to. The collaboration is represented through its ID (e.g. “c1”). This element may be repeated if necessary.</br>Element <`cal:orgAddress`> **OPTIONAL** - full postal address of the institution as it would be written on a letter head.</br>Element <`cal:group`> **OPTIONAL** - see group discussion below|
|`<foaf:Person>`|`<foaf:Person>`**REQUIRED** - container element with information about the author. One or more authors reside within the <cal:authors> container.</br>Element `<foaf:name>` **OPTIONAL** - Author's complete name written in the format e.g. "Johannes Diderik van der Waals".</br>Element `<foaf:givenName>` **OPTIONAL** - all first/given names of an author in roman letters, e.g. "Johannes Diderik". You may leave this out in the rare case that a person does not possess a first name.</br>Element `<foaf:familyName>` **REQUIRED** - all sur/family names of an author in roman letters, e.g. "van der Waals".</br>Element `<cal:authorNameNative>` **OPTIONAL** - name of author as written in his or her native language e.g., "Ле́в Дави́дович Ланда́у" or "張晨光".</br>Element `<cal:authorSuffix>` **OPTIONAL** - suffiix information for a name E.g. "Jr.", "Sr.", "III".</br>Element `<cal:authorStatus>` **OPTIONAL** - this element describes the vital status of an author. If the author is deceased, please state "Deceased". This element can be left empty.</br>Element `<cal:authorNamePaper>` **REQUIRED** - name of author as it appears on the title page of the paper, e.g. "J. van der Waals". This element supports Roman letters only.</br>Element `<cal:authorNamePaperGiven>` **OPTIONAL** - given name(s) of the author, as it appears on the title page of the paper, typically initials, e.g. "J." This element supports Roman letters only. As with <foaf:givenName>, it is "optional" in that someone may only have one name.</br>Element `<cal:authorNamePaperFamily>` **OPTIONAL** - family name of author as it appears on the title page of the paper, e.g. "van der Waals". This element supports Roman letters only.</br>Element `<cal:authorCollaboration>` **REQUIRED** - in a multi collaboration environment, the author can be attached to a collaboration with the appropriate collaboration ID. If the author is a member of more than one collaborations or has more than one position, this element may be repeated.</br>Attribute `"collaborationid"` **REQUIRED** - (defaults to the first collaboration). Enables the specification of exactly which collaboration this author is attached to. The collaboration is represented through its ID (e.g. "c1").</br>Attribute "position" **OPTIONAL** - this attribute specifies the position of an author within the collaboration. This may be "Spokesperson", "Contact person", "Speaker" or "Editor".</br>Element `<cal:authorAffiliation>` **OPTIONAL** - this element connects the author to his or her institution, through the organization ID attribute. All affiliation elements (zero or more) reside within the <cal:authorAffiliations> container. Several affiliations may be mentioned by using several of these elements - one line for each affiliation. Please do not use a (comma-separated) list of organization identifiers in the 'organizationid' attribute. In cases where multiple affiliations resemble one entity, please mark the organizations with IDs e.g. "o1a", "o1b" and "o1c" to show their relation.</br>Attribute `"organizationid"` **REQUIRED** - connects with one of the organizations from above. The link is established by using the respective ID of the organization here (e.g. "a1").</br>Attribute `"connection"` **OPTIONAL** - (Defaults to "Affiliated with"). Here, you can list information about the connection such as "Affiliated with", "On leave from", "Also at" or "Visitor".</br>Element `<cal:authorid>` **OPTIONAL** - this element specifies an ID number that identifies an author.</br>All ID elements (zero or more) reside within the <cal:authorids> container.</br>Attribute `"source"` **REQUIRED** - (if there is an authorID element present) specifies the origins of the number. This can be an INSPIRE ID number (source="INSPIRE"), a collaboration-internal ID (source="INTERNAL") or other author ID services (e.g. source="ORCID"). Using INSPIRE ID numbers is strongly encouraged. A persistant ID for an author allows the INSPIRE service team to identify the authors and attach the respective identifiers to their INSPIRE ID. Please consult the section on "How do I obtain the information needed in author.xml?" for more detailed information about the handling of author ids.</br>Element `<cal:authorFunding>` **OPTIONAL** - this element describes the author's funding source, such as a grant or fellowship, if necessary (e.g., Alfred P. Sloan Fellow). This element can be left empty|

          - Bullet list
              - Nested bullet
                  - Sub-nested bullet etc
          - Bullet list item 2

`foaf:Organization` **REQUIRED** - container element with information about an organization with which authors are affiliated. There may be one or more organizations within the <cal:organizations> container, and each organization is identified by the “id” attribute.
          - Attribute `“id”` **REQUIRED** - typically, it is a letter+sequential number, starting at “a1”, used to denote the author’s institution in this particular author.xml file so as to attach authors to the institution.
          - Element <`cal:orgDomain`> **OPTIONAL** - internet domain of the institution. The domain should be detailed enough to unambiguously determine the institution if there are distinct locations throughout the nation, e.g., pv.infn.it rather than just infn.it. If desired, this can go to the department/research-group level.
              - Nested bullet
                  - Sub-nested bullet etc
          - Bullet list item 2 

     - 
     - Element <`cal:orgDomain`> **OPTIONAL** - internet domain of the institution. The domain should be detailed enough to unambiguously determine the institution if there are distinct locations throughout the nation, e.g., pv.infn.it rather than just infn.it. If desired, this can go to the department/research-group level.
     - Element <`foaf:name`> **REQUIRED** this is the name of the organization as it will appear on the document.
     - Element <`cal:orgName`> **OPTIONAL** - this element also defines the name of the organization. Depending on where this name originates from, the source attribute can be used. The element content shall be only the name of the respective institute. Location information, if not part of the name, may be stated in the orgAddress element.</br>Attribute `“source”` **OPTIONAL** - (Defaults to “INTERNAL”) enables you to use either the INSPIRE (a.k.a. INSPIRE-ICN) form of the institution’s name or your own INTERNAL form.</br> Element `<cal:orgStatus>` **OPTIONAL** - status of the organization within the collaboration. Typically this would be either “member” or “nonmember.”</br>Attribute `“collaborationid”` **OPTIONAL** - enables you to specify which exact collaboration this organization is attached to. The collaboration is represented through its ID (e.g. “c1”). This element may be repeated if necessary.</br>Element <`cal:orgAddress`> **OPTIONAL** - full postal address of the institution as it would be written on a letter head.</br>Element <`cal:group`> **OPTIONAL** - see group discussion below|


+ One
+ Two
+ Three
    - Nested One
    - Nested Two
    



<a name="authorxmlvalidate"></a>
## How do I validate my author.xml file?

<a name="authorxmlconvert"></a>
## Can I convert my author.xml file to another format?


![image](images/Angus-Satigny.jpg)


