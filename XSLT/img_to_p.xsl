<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/2000/svg">
    
    <xsl:output method="xml" indent="yes"/> 
    
    <xsl:template match="/">
        <svg width="100%" height="100%">
            <g transform="translate(50, 500)">
                <text x="500"  y="{(3500 div 10) * -1}" style="text-anchor: end" font-family="sans-serif">Image-to-Paragraph Ratio: <xsl:value-of select="round(count(//img) div count(//p), 2) * 100"/>%</text>
            </g>
        </svg>
    </xsl:template>
    
</xsl:stylesheet>