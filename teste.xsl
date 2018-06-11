<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:template match="/">
  <html>
    <body>
      <h2>Minha coleção de Filmes</h2>
      <table border="1">
        <tr bgcolor="rgb(22, 42, 204)">
          <th>Titulo</th>
          <th>Ano</th>
        </tr >
        <xsl:for-each select="Catalogo/Filme">
          <tr>
            <td><xsl:value-of select="Titulo"/></td>
            <td><xsl:value-of select="Ano"/></td>
          </tr>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>
</xsl:stylesheet>
