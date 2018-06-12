<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml" version="1.0"
encoding="UTF-8" indent="yes"/>

<xsl:template match="/">
  <root>
    <carros>
    <xsl:for-each select="root/carros/carro">
      <xsl:sort select="ano"/>
            <carro>
              <modelo><xsl:value-of select="modelo"/></modelo>
              <marca><xsl:value-of select="marca"/></marca>
              <ano><xsl:value-of select="ano"/></ano>
              <xsl:choose>
                  <xsl:when test="ano&gt;'2000'">
                    <status>Novo</status>
                  </xsl:when>
                  <xsl:otherwise>
                    <status>Antigo</status>
                  </xsl:otherwise>
                </xsl:choose>
            </carro>
      </xsl:for-each>
    </carros>
  </root>
  </xsl:template>
</xsl:stylesheet>
