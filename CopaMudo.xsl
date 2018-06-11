<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
    <html>
      <body>
        <h2>Participantes da Copa do Mundo 2018 Russia</h2>
        <table border= "1">
          <tr bgcolor= "rgb(166, 237, 169)">
            <th>Seleção</th>
            <th>Numero de Participaçoes</th>
            <th>Melhor Resultado</th>
            <th>Ultimo Resultado</th>
          </tr>
          <xsl:for-each select="selecao/pais">
            <xsl:sort select="time"/>
            <xsl:if test="participacoes &gt; 10">
            <tr>
              <td><xsl:value-of select="time"/></td>
              <td><xsl:value-of select="participacoes"/></td>
              <td><xsl:value-of select="melhorResultado"/></td>
              <td><xsl:value-of select="ultimoResultado"/></td>
            </tr>
            </xsl:if >
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
