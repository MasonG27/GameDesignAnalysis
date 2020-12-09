<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="3.0">
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:template match="section">
        <section name="{child::*[matches(name(),'[Tt]itle')][1]!replace(.,'\W','')!substring(.,1,20)}"><xsl:apply-templates></xsl:apply-templates></section>
    </xsl:template>
</xsl:stylesheet>