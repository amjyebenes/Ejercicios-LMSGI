<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="html" encoding="iso-8859-1"/>
    <xsl:template match="videoclub">
        <html>
            <head>
                <xsl:call-template name="css"/>
            </head>
            <body>
                <xsl:call-template name="tablaColores"/>
                <p/>
                <p/>
                <xsl:call-template name="tablaImagenes"/>
                <p/>
                <p/>
                <xsl:call-template name="juegoMayorPegi"/>
                <p/>
                <p/>
                <xsl:call-template name="peliculaMasCorta"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template name="tablaColores">
        <table>
            <tr>
                <th>Titulo</th>
                <th>Pegi</th>
                <th>Duracion/Plataforma</th>
                <th>Alquiler diario</th>			
            </tr>
            <xsl:for-each select="Peliculas/pelicula">
                    <xsl:sort select="@order"/>
                    <tr>
                        <xsl:choose>
                            <xsl:when test="position() mod 2 = 1">
                                <xsl:attribute name="bgcolor">#f4fc03;</xsl:attribute>
                            </xsl:when>
                            <xsl:when test="position() mod 2 = 0">
                                <xsl:attribute name="bgcolor">#ddf768;</xsl:attribute>
                            </xsl:when>
                        </xsl:choose>
                        <td><xsl:value-of select="@titulo"/></td>
                        <td><xsl:value-of select="@pegi"/></td>
                        <td><xsl:value-of select="@duracionEnMinutos"/></td>
                        <td><xsl:value-of select="@alquilerDiario"/></td>
                    </tr>
            </xsl:for-each>
            <xsl:for-each select="videojuegos/videoJuego">
                <xsl:sort select="@order"/>
                <tr>
                    <xsl:choose>
                        <xsl:when test="position() mod 2 = 1">
                            <xsl:attribute name="bgcolor">#a7facf;</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="position() mod 2 = 0">
                            <xsl:attribute name="bgcolor">#006e35;</xsl:attribute>
                        </xsl:when>
                    </xsl:choose>
                    <td><xsl:value-of select="[.]"/></td>
                    <td><xsl:value-of select="@pegi"/></td>
                    <td><xsl:value-of select="@plataforma"/></td>
                    <td><xsl:value-of select="@alquilerDiario"/></td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>
    
    <xsl:template name="tablaImagenes">
        <table>
            <xsl:call-template name="bucleForFila">
                <xsl:with-param name="i">1</xsl:with-param>
            </xsl:call-template>
        </table>
    </xsl:template>
    
    <xsl:template name="bucleForFila">
        <xsl:param name="i"/>
        <xsl:if test="$i &lt;= 5">
            <tr>
                <xsl:call-template name="bucleForColumna">
                    <xsl:with-param name="i"><xsl:value-of select="$i"/></xsl:with-param>
                    <xsl:with-param name="j">1</xsl:with-param>
                </xsl:call-template>
                <xsl:call-template name="bucleForFila">
                    <xsl:with-param name="i"><xsl:value-of select="$i + 1"/></xsl:with-param>
                </xsl:call-template>
            </tr>
        </xsl:if>
    </xsl:template>
    
    <xsl:template name="bucleForColumna">
        <xsl:param name="i"/>
        <xsl:param name="j"/> 
        <xsl:if test="$j &lt;= 5">
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
            <xsl:for-each select="Peliculas/pelicula">
                <xsl:if test="coordenadas/@y=$x and coordenadas/@x=$y">
                    <xsl:attribute name="style">
                        background:#<xsl:value-of select="/videoclub/bancoDeImagenes/color[@identificador = 'peliculas']"/>;
                    </xsl:attribute>
                    
                        <xsl:call-template name="imagenes">
                            <xsl:with-param name="idImagen">
                                <xsl:value-of select="@idimg"/>
                            </xsl:with-param>
                        </xsl:call-template>
                        <br/>
                        <xsl:value-of select="@titulo"/>
                        <br/>
                        Pegi:<xsl:value-of select="@pegi"/>                    
                        <br/>
                        Alquiler:<xsl:value-of select="@alquilerDiario"/>
                    
                </xsl:if>
            </xsl:for-each>
            
            <xsl:for-each select="videojuegos/videoJuego">
                <xsl:if test="@y=$x and @x=$y">
                    <xsl:attribute name="style">
                        background:#<xsl:value-of select="/videoclub/bancoDeImagenes/color[@identificador = 'videojuegos']"/>;
                    </xsl:attribute>
                    <div>
                    <xsl:call-template name="imagenes">
                        <xsl:with-param name="idImagen">
                            <xsl:value-of select="idImg/@valor"/>
                        </xsl:with-param>
                    </xsl:call-template>
                    </div>
                    <div>
                    <br/>
                    <xsl:value-of select="."/>
                    <br/>
                    Pegi:<xsl:value-of select="@pegi"/>                    
                    <br/>
                    Alquiler:<xsl:value-of select="@alquilerDiario"/>
                    </div>
                </xsl:if>
            </xsl:for-each>
        </td>
    </xsl:template>
    
    <xsl:template name="imagenes">
        <xsl:param name="idImagen"/>
        <xsl:for-each select="/videoclub/bancoDeImagenes/imagen[@identificador = $idImagen]">
            <img src="{.}"></img>
        </xsl:for-each>
    </xsl:template>
    
    
    
    <xsl:template name="juegoMayorPegi">
        <xsl:for-each select="videojuegos/videoJuego">
            <xsl:sort select="@pegi" order="descending" />
            <xsl:if test="position()=1">
            <h1>El juego con mayor pegi es <xsl:value-of select="[.]"/></h1>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template name="peliculaMasCorta">
        <xsl:for-each select="Peliculas/pelicula">
            <xsl:sort select="@duracionEnMinutos" order="ascending" />
            <xsl:if test="position()=1">
                <h1>La pelicula mas corta es <xsl:value-of select="@titulo"/></h1>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
    
    
    
    <xsl:template name="css">
        <style type="text/css">
            
            table, th, td{
            border:1px solid black;
            }
            
            table{
                width:950px;
                margin-left:250px;
            }
            
            img {
            width: 80%;
            }
           
            th {
            background: blue;
            color:white;
            }
            h1{
            margin-left:400px;
            }
            
            
        </style>
    </xsl:template>
</xsl:stylesheet>