<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/biblioteca">
        <html>
            <body>
                <h1>Nuestra biblioteca</h1>
                <xsl:for-each select="libro">
                    <table border="1">
                        <tr class="tituloTabla">
                            <td>Titulo: <xsl:value-of select="titulo"/></td>
                        </tr>
                        <tr>
                            <td>Autor: <xsl:value-of select="autor"/> - <xsl:value-of select="autor/@fechaNacimiento"/></td>
                        </tr>
                        <tr>
                            <td>Fecha de publicacion: <xsl:value-of select="fechaPublicacion/@año"/></td>
                        </tr>
                    </table>
                    <br/>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>