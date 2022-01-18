<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Employee Management System</title>
                <style>
                    @font-face { font-family: 'Montserrat'; src: url("../frontend/font/Montserrat-Regular.ttf"); }
                    *{ margin: 0; padding: 0; }
                    body{ background-color: #f9f9f9; font-family: 'Montserrat'; }
                    h1{ text-align: center; color: white; background-color: #333333; padding:1%; }
                    h2{ margin:2% 5%; }
                    table{ background-color: #e3e3e3; margin:2% 5%; width:90%; }
                    td, th{ text-align:left; padding:2%; }
                </style>
            </head>
            <body>
                <h1>Employee Management System</h1>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>NAME</th>
                        <th>AGE</th>
                        <th>SALARY</th>
                        <th>EMAIL</th>
                        <th>MOBILE</th>
                        <th>DESIGNATION</th>
                        <th>PROMOTION</th>
                    </tr>
                    <xsl:for-each select="company/employee">
                        <tr>
                            <td><xsl:value-of select="eid"/></td>
                            <td><xsl:value-of select="Emp-name"/></td>
                            <td><xsl:value-of select="Emp-age"/>years</td>
                            <td><xsl:value-of select="Emp-salary"/></td>
                            <td><xsl:value-of select="Emp-mailid"/></td>
                            <td><xsl:value-of select="Emp-Phonenum"/></td>
                            <td><xsl:value-of select="Emp-designation"/></td>
                            <xsl:choose>
                                <xsl:when test="Emp-age &gt;=50"><td>Associate Project Manager</td></xsl:when>
                                <xsl:when test="Emp-age &gt;=40 and Emp-age &lt;=49"><td>Team Leader</td></xsl:when>
                                <xsl:when test="Emp-age &lt;=40"><td>Developer</td></xsl:when>
                                <xsl:otherwise><td><xsl:value-of select="Emp-name"/></td></xsl:otherwise>
                            </xsl:choose>
                            
                        </tr>
                  </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
