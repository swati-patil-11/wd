<?xml version = "1.0" encoding = "UTF-8"?> 
<xsl:stylesheet version = "1.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
   <xsl:output method="html"/>
   <xsl:template match = "/"> 
      <html> 
         <body> 
            <h2 style="margin-left : 40%; margin-right : 45% ">Students</h2> 
            <table border = "1" style="margin-left : 10%; margin-right : 45% ; text-align:center;
             width:60% ; height : 20%"> 
               <tr bgcolor = "#fadbd8" style = "width : 30%"> 
                  <th>Roll No</th> 
                  <th>First Name</th> 
                  <th>Last Name</th> 
                  <th>Nick Name</th> 
                  <th>Marks</th> 
               </tr> 
					
               <xsl:for-each select = "class/student"> 
					
                  <xsl:if test = "marks > 80"> 
                     <tr> 
                        <td><xsl:value-of select = "@rollno"/></td> 
                        <td><xsl:value-of select = "firstname"/></td> 
                        <td><xsl:value-of select = "lastname"/></td> 
                        <td><xsl:value-of select = "nickname"/></td> 
                        <td><xsl:value-of select = "marks"/></td> 
                     </tr> 
                  </xsl:if> 
               </xsl:for-each> 
					
            </table> 
         </body> 
      </html> 
   </xsl:template>  
</xsl:stylesheet>