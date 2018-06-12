<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <root>
      <meus-itens>

        <xsl:for-each select="root/produtos/produto">

          <xsl:if test="tipo = 'Fruta'">
            <item>
              <nome><xsl:value-of select="nome"/></nome>
              <preco><xsl:value-of select="preco"/></preco>
            </item>
          </xsl:if>
        </xsl:for-each>
      </meus-itens>
    </root>
  </xsl:template>
</xsl:stylesheet>
