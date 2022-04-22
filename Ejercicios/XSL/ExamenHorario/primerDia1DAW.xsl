<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="html" encoding="iso-8859-1"/>
    
    <xsl:template match="/primerDia1DAW">
        <style>
            img{
            width:30px;
            }
        </style>
        <xsl:call-template name="tabla"/>
        <xsl:call-template name="distribucion"/>
    </xsl:template>
    
    
    <xsl:template name="bucleForFila">
        <xsl:param name="i"/>
        <xsl:if test="$i &lt;= 11">
            <tr>
                <xsl:call-template name="bucleForColumna">
                    <xsl:with-param name="i"><xsl:value-of select="$i"/></xsl:with-param>
                    <xsl:with-param name="j">1</xsl:with-param>
                </xsl:call-template>
            </tr>
            <xsl:call-template name="bucleForFila">
                <xsl:with-param name="i"><xsl:value-of select="$i + 1"/></xsl:with-param>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>
    
    <xsl:template name="bucleForColumna">
        <xsl:param name="i"/>
        <xsl:param name="j"/> 
        <xsl:if test="$j &lt;= 8">
            <xsl:call-template name="celda">
                <xsl:with-param name="x"><xsl:value-of select="$j"/></xsl:with-param>
                <xsl:with-param name="y"><xsl:value-of select="$i"/></xsl:with-param>
            </xsl:call-template>
            <xsl:call-template name="bucleForColumna">
                <xsl:with-param name="i"><xsl:value-of select="$i"/></xsl:with-param>
                <xsl:with-param name="j"><xsl:value-of select="$j + 1"/></xsl:with-param>
            </xsl:call-template>
        </xsl:if>
    </xsl:template>
    
    
    
    <xsl:template name="celda">
        <xsl:param name="x"/>
        <xsl:param name="y"/>
        <td>
            <xsl:for-each select="estructuraAula/bloque">
                <xsl:if test="@x = $x and @y = $y">
                    <xsl:variable name="tipoDelBloque" select="@tipo"/>
                    <xsl:attribute name="style">
                        background:#<xsl:value-of select="/primerDia1DAW/estructuraAula/color[@tipo=$tipoDelBloque]"/>;
                    </xsl:attribute>
                    <xsl:value-of select="@tipo"/>
                </xsl:if>
            </xsl:for-each>
            <xsl:for-each select="/primerDia1DAW/alumnado/alumno">
                <xsl:if test="@x = $x and @y = $y">
                    
                    <xsl:choose>
                        <xsl:when test="@sexo = 'H'">
                            <xsl:variable name="sexoH" select="@tipo"/>
                            <xsl:attribute name="style">background:lightgreen;</xsl:attribute>
                            <img src="{/primerDia1DAW/alumnado/imagen[@sexo = 'H']}"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:attribute name="style">background:lightgreen;</xsl:attribute>
                            <img src="{/primerDia1DAW/alumnado/imagen[@sexo = 'M']}"/>
                        </xsl:otherwise>
                    </xsl:choose>
                    
                    <xsl:value-of select="."/>
                </xsl:if>
            </xsl:for-each>
        </td>
    </xsl:template>
    
    <xsl:template name="bloqueconColor">
        <xsl:param name="tipo"/>
    </xsl:template>
    
    <xsl:template match="horario/dia">
            <tr>
                <td>
                    <xsl:value-of select="@desc"/>
                </td>
                <xsl:for-each select="hora">
                    <xsl:sort select="@orden" order="ascending"/>
                    <td>
                        <xsl:attribute name="style">
                            background:
                            <xsl:choose>
                                <xsl:when test="position() mod 2 = 1"> blue;</xsl:when>
                                <xsl:otherwise> white;</xsl:otherwise> 
                            </xsl:choose>                         
                        </xsl:attribute>
                        <xsl:value-of select="."/> 
                    </td>
                </xsl:for-each>
            </tr>
    </xsl:template>
    
    <xsl:template name="tabla">
        <table width="800px" border="1px">
            <tr>
                <th></th>
                <th>8:30-9:30</th>
                <th>9:30-10:30</th>
                <th>10:30-11:30</th>
                <th>12:00-13:00</th>
                <th>13:00-14:00</th>
                <th>14:00-15:00</th>
                
                <xsl:apply-templates select="horario/dia"/>
                
            </tr>
        </table>
    </xsl:template>
    
    <xsl:template name="distribucion">
        <br/>
        <table width="800px" border="1px">
            <tr>                
                <xsl:call-template name="bucleForFila">
                    <xsl:with-param name="i">1</xsl:with-param>
                </xsl:call-template>
            </tr>
        </table>
    </xsl:template>
    
</xsl:stylesheet>