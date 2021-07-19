<?xml version = "1.0" encoding = "UTF-8"?>  
<xsl:stylesheet version = "1.0"   
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">  
<xsl:template match = "/">   

<html>   
         <body>  
            <h2>Employee</h2>   
            <table border = "1" cellpadding="10">   
               <tr bgcolor = "#9acd32">   
                  <th>ENO</th>   
                  <th>First Name</th>   
                  <th>Last Name</th>   
                  <th>Middle Name</th>   
                  <th>Father Name</th>   
                  <th>DOB</th>
                  <th>City</th>   
                   <th>State</th>   
	<th>Qualiication</th>    
	<th>Salary</th>     
               </tr>
	<xsl:for-each select="class/employee">   
	<xsl:sort select="lastname" order="ascending" data-type="text"/> 
	<xsl:sort select="salary" order="descending" data-type="number"/> 
	<xsl:if test="dob=''">
		<xsl:message terminate="yes">A DOB field is empty.
		</xsl:message>
	</xsl:if>
	<xsl:if test ="salary>50000"> 
                  <tr>   
                     <td>       
	<xsl:value-of  select = "@id"/>   
                     </td>   
                     <td><xsl:value-of select = "firstname"/></td>   
                     <td><xsl:value-of select = "lastname"/></td>   
                     <td><xsl:value-of select = "middlename"/></td>  
	<td><xsl:value-of select = "fathername"/></td>
	<td><xsl:value-of select = "dob"/></td>
	<td><xsl:value-of select = "city"/></td> 
	<td><xsl:value-of select = "state"/></td>
	<td><xsl:value-of select = "qualification"/></td>  
                     <td>
	<xsl:choose>
		<xsl:when test="salary>100000">High
		</xsl:when>
		<xsl:when test="salary>50000">Medium
		</xsl:when>
		<xsl:when test="salary>0">Low
		</xsl:when>
	</xsl:choose>
	<xsl:value-of select = "salary"/>
	</td>     
                  </tr>   
	</xsl:if>
	
               </xsl:for-each>   
            </table>   
         </body>   
      </html>   
   </xsl:template>    
</xsl:stylesheet>  