<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="html" encoding="iso-8859-1"/>
    
    <xsl:template match="/juegoTanques">
        <head>
            <xsl:call-template name="css"/>
        </head>
        <table width="750px" border="1">
            <tr>
                <th>Jugada</th>
                <th>Tanque</th>
                <th>Jugada</th>
            
            <xsl:for-each select="jugadasDescritas/jugada">
                <tr>
                    <xsl:attribute name="style">
                        background:
                        <xsl:choose>
                            <xsl:when test="position() mod 2 = 1"> #9cdeff;</xsl:when>
                            <xsl:otherwise> #d4f1ff;</xsl:otherwise>
                        </xsl:choose>
                    </xsl:attribute>
                    <td>
                    <xsl:value-of select="position()"/>
                    </td>
                    <td>
                        <xsl:call-template name="buscaImagenTanque">
                            <xsl:with-param name="jugador" select="@jugador"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:value-of select="@desc"/>
                    </td>
                </tr>
            </xsl:for-each>
            </tr>
        </table>
        
        <xsl:for-each select="jugadasGraficas/jugadaGrafica">
            <table width="370px">
                <th></th>
                <th>1</th>
                <th>2</th>
                <th>3</th>
                <th>4</th>
                <th>5</th>
                <th>6</th>
                <th>7</th>
                <th>8</th>
                <tr>
                    <td style="background:#0000ff;">
                        1               
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="1"/>
                            <xsl:with-param name="y" select="1"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="2"/>
                            <xsl:with-param name="y" select="1"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="3"/>
                            <xsl:with-param name="y" select="1"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="4"/>
                            <xsl:with-param name="y" select="1"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="5"/>
                            <xsl:with-param name="y" select="1"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="6"/>
                            <xsl:with-param name="y" select="1"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="7"/>
                            <xsl:with-param name="y" select="1"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="8"/>
                            <xsl:with-param name="y" select="1"/>
                        </xsl:call-template>
                    </td>
                </tr>
                    
                <tr>
                    <td style="background:#0000ff;">
                        2
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="1"/>
                            <xsl:with-param name="y" select="2"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="2"/>
                            <xsl:with-param name="y" select="2"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="3"/>
                            <xsl:with-param name="y" select="2"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="4"/>
                            <xsl:with-param name="y" select="2"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="5"/>
                            <xsl:with-param name="y" select="2"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="6"/>
                            <xsl:with-param name="y" select="2"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="7"/>
                            <xsl:with-param name="y" select="2"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="8"/>
                            <xsl:with-param name="y" select="2"/>
                        </xsl:call-template>
                    </td>
                </tr>
                    
                <tr>
                    <td style="background:#0000ff;">
                        3
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="1"/>
                            <xsl:with-param name="y" select="3"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="2"/>
                            <xsl:with-param name="y" select="3"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="3"/>
                            <xsl:with-param name="y" select="3"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="4"/>
                            <xsl:with-param name="y" select="3"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="5"/>
                            <xsl:with-param name="y" select="3"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="6"/>
                            <xsl:with-param name="y" select="3"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="7"/>
                            <xsl:with-param name="y" select="3"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="8"/>
                            <xsl:with-param name="y" select="3"/>
                        </xsl:call-template>
                    </td>
                </tr>
                    
                <tr>
                    <td style="background:#0000ff;">
                        4
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="1"/>
                            <xsl:with-param name="y" select="4"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="2"/>
                            <xsl:with-param name="y" select="4"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="3"/>
                            <xsl:with-param name="y" select="4"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="4"/>
                            <xsl:with-param name="y" select="4"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="5"/>
                            <xsl:with-param name="y" select="4"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="6"/>
                            <xsl:with-param name="y" select="4"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="7"/>
                            <xsl:with-param name="y" select="4"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="8"/>
                            <xsl:with-param name="y" select="4"/>
                        </xsl:call-template>
                    </td>
                </tr>
                    
                <tr>
                    <td style="background:#0000ff;">
                        5
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="1"/>
                            <xsl:with-param name="y" select="5"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="2"/>
                            <xsl:with-param name="y" select="5"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="3"/>
                            <xsl:with-param name="y" select="5"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="4"/>
                            <xsl:with-param name="y" select="5"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="5"/>
                            <xsl:with-param name="y" select="5"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="6"/>
                            <xsl:with-param name="y" select="5"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="7"/>
                            <xsl:with-param name="y" select="5"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="8"/>
                            <xsl:with-param name="y" select="5"/>
                        </xsl:call-template>
                    </td>
                </tr>
                
                <tr>
                    <td style="background:#0000ff;">
                        6
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="1"/>
                            <xsl:with-param name="y" select="6"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="2"/>
                            <xsl:with-param name="y" select="6"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="3"/>
                            <xsl:with-param name="y" select="6"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="4"/>
                            <xsl:with-param name="y" select="6"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="5"/>
                            <xsl:with-param name="y" select="6"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="6"/>
                            <xsl:with-param name="y" select="6"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="7"/>
                            <xsl:with-param name="y" select="6"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="8"/>
                            <xsl:with-param name="y" select="6"/>
                        </xsl:call-template>
                    </td>
                </tr>
                
                <tr>
                    <td style="background:#0000ff;">
                        7
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="1"/>
                            <xsl:with-param name="y" select="7"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="2"/>
                            <xsl:with-param name="y" select="7"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="3"/>
                            <xsl:with-param name="y" select="7"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="4"/>
                            <xsl:with-param name="y" select="7"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="5"/>
                            <xsl:with-param name="y" select="7"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="6"/>
                            <xsl:with-param name="y" select="7"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="7"/>
                            <xsl:with-param name="y" select="7"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="8"/>
                            <xsl:with-param name="y" select="7"/>
                        </xsl:call-template>
                    </td>
                </tr>
                
                <tr>
                    <td style="background:#0000ff;">
                        8
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="1"/>
                            <xsl:with-param name="y" select="8"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="2"/>
                            <xsl:with-param name="y" select="8"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="3"/>
                            <xsl:with-param name="y" select="8"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="4"/>
                            <xsl:with-param name="y" select="8"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="5"/>
                            <xsl:with-param name="y" select="8"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="6"/>
                            <xsl:with-param name="y" select="8"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="7"/>
                            <xsl:with-param name="y" select="8"/>
                        </xsl:call-template>
                    </td>
                    <td>
                        <xsl:call-template name="paredTanque">
                            <xsl:with-param name="x" select="8"/>
                            <xsl:with-param name="y" select="8"/>
                        </xsl:call-template>
                    </td>
                </tr>
                
            </table>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template name="buscaImagenTanque">
        <xsl:param name="jugador"/>
        <xsl:for-each select="/juegoTanques/tanques/imagenTanque[@jugador]">
            <xsl:if test="@jugador = $jugador">
                <xsl:value-of select="@jugador"/>
                <img src="{.}"/>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template name="paredTanque">
        <xsl:param name="x"/>
        <xsl:param name="y"/>
        
        <xsl:for-each select="posicion">
            <xsl:if test="@x = $x and $y = @y">
                <xsl:attribute name="style">
                    background:
                    <xsl:choose>
                        <xsl:when test="@tipo = 'pared'">
                            black;
                        </xsl:when>
                        <xsl:when test="@tipo = 'tanque'">
                            red;
                        </xsl:when>
                        <xsl:otherwise> #ffffff;</xsl:otherwise>
                    </xsl:choose>
                </xsl:attribute>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
    
    
    <xsl:template name="css">
        <style>
            img{
                padding-left:50px;
                width: 15%;
                }
            th{
                background:#0000ff;
            }
            table{
                margin-left:300px;
                margin-bottom:50px;
                }
        </style>
    </xsl:template>
    
</xsl:stylesheet>