<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <body>
      <h2>Agencia</h2>
      <xsl:apply-templates select="agencia/carros/carro"/>
    </body>
  </html>
</xsl:template>

<xsl:template match="agencia/carros/carro">
  <xsl:apply-templates select="montadora"/>
  <xsl:apply-templates select="modelo"/>
</xsl:template>

  <xsl:template match="montadora">
    Montadora:<span style = "font-size = 22px">
      <xsl:value-of select="."/>
    </span>
  <br />
  </xsl:template>

  <xsl:template match="modelo">
      <span style = "color:blue">
        Modelo:<xsl:value-of select="."/>
      </span>
  </xsl:template>

</xsl:stylesheet>
