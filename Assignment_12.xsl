<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
<xsl:template match="/">
<html> 
<body style=" margin:auto ; padding:5px" >
  <h2>My CD Collection</h2>
  <table border="1" style="margin:auto">
    <tr bgcolor="#9acd32">
      <th style="text-align:left ; padding:5px; ">Title</th>
      
      <th style="text-align:left; padding :5px;">Artist</th>
    </tr>
    <xsl:for-each select="catalog/cd">
    <tr>
      <td><xsl:value-of select="title"/></td>
      <td><xsl:value-of select="artist"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>