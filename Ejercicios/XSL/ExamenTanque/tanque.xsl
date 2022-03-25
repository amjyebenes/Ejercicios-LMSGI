<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="html" encoding="iso-8859-1"/>
    
    <xsl:template match="juegoTanques/jugadasDescritas">
        <table width="100%" border="1">
            <tr>
                <th>Jugada</th>
                <th>Tanque</th>
                <th>Jugada</th>
            </tr>
            <xsl:for-each select="jugada">
                <tr>
                    <td>
                    <xsl:value-of select="position()"/>
                    </td>
                    <td>
                        <xsl:call-template name="buscaImagenTanque">
                            <xsl:with-param name="jugador" select="@jugador"/>
                        </xsl:call-template>
                    </td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>
    
    <xsl:template name="buscaImagenTanque">
        <xsl:param name="jugador"/>
        <xsl:for-each select="/juegoTanques/tanques/imagenTanque[@jugador]">
            <xsl:if test="@jugador = $jugador">
                <img src="{.}"/>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
    
</xsl:stylesheet>