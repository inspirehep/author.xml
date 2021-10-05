<?xml version="1.0" encoding="ISO-8859-1"?>
<!--
This file is part of Invenio.
Copyright (C) 2011, 2018 CERN.

Invenio is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License as
published by the Free Software Foundation; either version 2 of the
License, or (at your option) any later version.

Invenio is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
General Public License for more details.

You should have received a copy of the GNU General Public License
along with Invenio; if not, write to the Free Software Foundation, Inc.,
59 Temple Place, Suite 330, Boston, MA 02111-1307, USA.
-->
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:marc="http://www.loc.gov/MARC21/slim"
                xmlns:foaf="http://xmlns.com/foaf/0.1/"
                xmlns:cal="https://github.com/inspirehep/author.xml/"
                xmlns:cali="http://inspirehep.net/info/HepNames/tools/authors_xml/"
                xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
                xmlns:str="http://exslt.org/strings"
                exclude-result-prefixes="marc foaf cal cali rdf str">
  <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
  <!-- ************ FUNCTIONS ************ -->

<xsl:template name="substring-before-last">
  <xsl:param name="string1" select="''" />
  <xsl:param name="string2" select="''" />

  <xsl:if test="$string1 != '' and $string2 != ''">
    <xsl:variable name="head" select="substring-before($string1, $string2)" />
    <xsl:variable name="tail" select="substring-after($string1, $string2)" />
    <xsl:value-of select="$head" />
    <xsl:if test="contains($tail, $string2)">
      <xsl:value-of select="$string2" />
      <xsl:call-template name="substring-before-last">
        <xsl:with-param name="string1" select="$tail" />
        <xsl:with-param name="string2" select="$string2" />
      </xsl:call-template>
    </xsl:if>
  </xsl:if>
</xsl:template>

  <!-- FUNCTION  print-a-authorname: prints the authorname inside xxx__a subfield -->
  <xsl:template name="print-a-authorname">
    <xsl:choose>
        <xsl:when test="normalize-space(foaf:familyName) != '' and normalize-space(foaf:givenName) != ''">
          <subfield code="a"><xsl:value-of select="normalize-space(translate(foaf:familyName, '.', ''))"/>, <xsl:value-of select="normalize-space(translate(foaf:givenName, '.', ''))"/></subfield>
        </xsl:when>
        <xsl:when test="cal:authorNamePaper != ''|cali:authorNamePaper != ''">
          <xsl:variable name="aname" select="cal:authorNamePaper|cali:authorNamePaper" />
          <xsl:variable name="tokens" select="str:split($aname, '.')" />
          <xsl:variable name="first">
              <xsl:for-each select="$tokens[position()!=last()]">
                  <xsl:text> </xsl:text><xsl:value-of select="normalize-space(.)"/>
              </xsl:for-each>
          </xsl:variable>
          <subfield code="a"><xsl:value-of select="normalize-space($tokens[position()=last()])"/>,<xsl:value-of select="$first"/></subfield>
        </xsl:when>
    </xsl:choose>
  </xsl:template>

  <!-- FUNCTION  print-i-authorinspireid: prints the authors INSPIRE ID inside xxx__i subfield -->
  <xsl:template name="print-i-authorinspireid">
    <xsl:param name="authorid"/>
    <xsl:if test="not(contains($authorid, 'UNDEFINED')) and not(contains($authorid, 'undefined')) and not($authorid = 'INSPIRE-') and not ($authorid = 'inspire-') and $authorid!='' and contains($authorid, 'INSPIRE') ">
      <subfield code="i"><xsl:value-of select="normalize-space($authorid)"/></subfield>
    </xsl:if>
    <xsl:if test="not(contains($authorid, 'UNDEFINED')) and not(contains($authorid, 'undefined')) and not(contains($authorid, 'INSPIRE'))  and not($authorid = 'INSPIRE-') and not ($authorid = 'inspire-') and not(normalize-space($authorid) = '') and $authorid!=''">
      <subfield code="i">INSPIRE-<xsl:value-of select="normalize-space($authorid)"/></subfield>
    </xsl:if>
  </xsl:template>

  <!-- FUNCTION  print-j-authororcid: prints the authors ORCID inside xxx__j subfield -->
  <xsl:template name="print-j-authororcid">
    <xsl:param name="orcid"/>
    <xsl:if test="not(contains($orcid, 'UNDEFINED')) and not(contains($orcid, 'undefined')) and $orcid!=''">
      <subfield code="j">ORCID:<xsl:value-of select="normalize-space($orcid)"/></subfield>
    </xsl:if>
  </xsl:template>

  <!-- FUNCTION  print-j-authorid: prints the authors ID inside xxx__j subfield -->
  <xsl:template name="print-j-authorid">
    <xsl:param name="authorid"/>
    <xsl:if test="not(contains($authorid, 'UNDEFINED')) and not(contains($authorid, 'undefined'))">
      <subfield code="j"><xsl:value-of select="normalize-space(@source)" />-<xsl:value-of select="normalize-space($authorid)"/></subfield>
    </xsl:if>
  </xsl:template>



  <!-- FUNCTION  print-t-grid: prints the authors affiliation grid inside xxx__t subfield -->
  <xsl:template name="print-t-grid">
    <xsl:param name="orgid"/>
    <xsl:variable name="orgname" select="//foaf:Organization[@id=$orgid]/cal:orgName[@source='GRID'] |
                                         //foaf:Organization[@id=$orgid]/cali:orgName[@source='GRID']" />
          <xsl:choose>
      <xsl:when test="not(contains($orgname, 'UNDEFINED')) and $orgname!=''" >
        <subfield code="t"><xsl:value-of select="normalize-space($orgname)"/></subfield>
      </xsl:when>
      <xsl:otherwise>
          <xsl:for-each
              select="//collaborationauthorlist/cal:organizations/foaf:Organization |
                      //collaborationauthorlist/cali:organizations/foaf:Organization">
            <xsl:if test="cal:group[@with=$orgid]|cali:group[@with=$orgid]">
              <subfield code="t"><xsl:value-of select="cal:orgName[@source='GRID']|cali:orgName[@source='GRID']"/></subfield>
            </xsl:if>
          </xsl:for-each>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- FUNCTION  print-t-ror: prints the authors affiliation ROR inside xxx__t subfield -->
  <xsl:template name="print-t-ror">
    <xsl:param name="orgid"/>
    <xsl:variable name="orgname" select="//foaf:Organization[@id=$orgid]/cal:orgName[@source='ROR'] |
                                         //foaf:Organization[@id=$orgid]/cali:orgName[@source='ROR']" />
          <xsl:choose>
      <xsl:when test="not(contains($orgname, 'UNDEFINED')) and $orgname!=''" >
        <subfield code="t"><xsl:value-of select="normalize-space($orgname)"/></subfield>
      </xsl:when>
      <xsl:otherwise>
          <xsl:for-each
              select="//collaborationauthorlist/cal:organizations/foaf:Organization |
                      //collaborationauthorlist/cali:organizations/foaf:Organization">
            <xsl:if test="cal:group[@with=$orgid]|cali:group[@with=$orgid]">
              <subfield code="t"><xsl:value-of select="cal:orgName[@source='ROR']|cali:orgName[@source='ROR']"/></subfield>
            </xsl:if>
          </xsl:for-each>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>



  <!-- FUNCTION  print-u-affiliation: prints the authors affiliation inside xxx__u subfield -->
  <xsl:template name="print-u-affiliation">
    <xsl:param name="orgid"/>
    <xsl:variable name="orgname" select="//foaf:Organization[@id=$orgid]/cal:orgName[@source='spiresICN'] |
                                         //foaf:Organization[@id=$orgid]/cal:orgName[@source='inspire'] |
                                         //foaf:Organization[@id=$orgid]/cal:orgName[@source='INSPIRE'] |
                                         //foaf:Organization[@id=$orgid]/cali:orgName[@source='spiresICN'] |
                                         //foaf:Organization[@id=$orgid]/cali:orgName[@source='inspire'] |
                                         //foaf:Organization[@id=$orgid]/cali:orgName[@source='INSPIRE']" />
          <xsl:choose>
      <xsl:when test="not(contains($orgname, 'UNDEFINED')) and $orgname!=''" >
        <subfield code="u"><xsl:value-of select="normalize-space($orgname)"/></subfield>
      </xsl:when>
      <xsl:otherwise>
          <xsl:for-each
	      select="//collaborationauthorlist/cal:organizations/foaf:Organization |
		      //collaborationauthorlist/cali:organizations/foaf:Organization">
            <xsl:if test="cal:group[@with=$orgid]|cali:group[@with=$orgid]">
              <subfield code="u"><xsl:value-of select="cal:orgName[@source='INSPIRE']|cali:orgName[@source='INSPIRE']"/></subfield>
            </xsl:if>
          </xsl:for-each>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- FUNCTION  print-author: prints the authorinfo -->
  <xsl:template name="print-author">
    <xsl:param name="person"/>
    <!-- Fetch authors familyname, givenname and create 100/700__a subfield-->
    <xsl:call-template name="print-a-authorname"/>


    <!-- Go through each author affiliation and create 100/700__u subfield(s) -->
    <xsl:for-each select="./cal:authorAffiliations/cal:authorAffiliation|./cali:authorAffiliations/cali:authorAffiliation">
      <xsl:variable name="orgid" select="@organizationid" />

      <!-- Print spiresICN if defined, otherwise print full name -->
      <xsl:call-template name="print-u-affiliation">
        <xsl:with-param name="orgid" select="$orgid"/>
      </xsl:call-template>
      <xsl:call-template name="print-t-grid">
        <xsl:with-param name="orgid" select="$orgid"/>
      </xsl:call-template>
      <xsl:call-template name="print-t-ror">
        <xsl:with-param name="orgid" select="$orgid"/>
      </xsl:call-template>


    </xsl:for-each>

    <!-- Fetch Inspire ID and create 100/700__i subfield -->
    <xsl:for-each select="./cal:authorIDs/cal:authorID|./cali:authorIDs/cali:authorID">
      <xsl:if test="not(.//*[contains(., 'UNDEFINED')])">
        <xsl:choose>
            <xsl:when test="@source='INSPIRE' or @source='Inspire ID'">
                <xsl:call-template name="print-i-authorinspireid">
                    <xsl:with-param name="authorid" select="."/>
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="@source='ORCID' or @source='orcid'">
                <xsl:call-template name="print-j-authororcid">
                    <xsl:with-param name="orcid" select="."/>
                </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
                <xsl:call-template name="print-j-authorid">
                    <xsl:with-param name="authorid" select="."/>
                </xsl:call-template>
            </xsl:otherwise>
        </xsl:choose>
      </xsl:if>
    </xsl:for-each>
    <xsl:for-each select="./cal:authorids/cal:authorid|./cali:authorids/cali:authorid">
      <xsl:if test="not(.//*[contains(., 'UNDEFINED')])">
        <xsl:choose>
            <xsl:when test="@source='INSPIRE' or @source='Inspire ID'">
                <xsl:call-template name="print-i-authorinspireid">
                    <xsl:with-param name="authorid" select="."/>
                </xsl:call-template>
            </xsl:when>
            <xsl:when test="@source='ORCID' or @source='orcid'">
                <xsl:call-template name="print-j-authororcid">
                    <xsl:with-param name="orcid" select="."/>
                </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
                <xsl:call-template name="print-j-authorid">
                    <xsl:with-param name="authorid" select="."/>
                </xsl:call-template>
            </xsl:otherwise>
        </xsl:choose>
      </xsl:if>
    </xsl:for-each>
  </xsl:template>
  <!-- ************ MAIN CODE ************ -->
  <xsl:template match="/">
    <record>
    <xsl:apply-templates select="//foaf:Person"/>
    </record>
  </xsl:template>

  <xsl:template match="foaf:Person">
    <xsl:choose>
      <!-- First author in tag 100 -->
      <xsl:when test="position() = 1">
        <datafield tag="100" ind1=" " ind2=" ">
          <xsl:call-template name="print-author"/>
        </datafield>
      </xsl:when>
      <!-- Rest of authors in tag 700 -->
      <xsl:otherwise>
        <datafield tag="700" ind1=" " ind2=" ">
          <xsl:call-template name="print-author"/>
        </datafield>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>


</xsl:stylesheet>
