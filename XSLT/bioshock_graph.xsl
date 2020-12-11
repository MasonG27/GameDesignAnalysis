<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/2000/svg">
    
    <xsl:output method="xml" indent="yes"/> 
    
    <xsl:template match="/">
        <svg width="100%" height="100%">
            <g transform="translate(50, 500)">
                <rect width="20" height="{count(//GP[text()]/tokenize(., ' ')) div 10}" x="40" y="{(count(//GP[text()]/tokenize(., ' ')) div 10) * -1}" fill="#66FF00"/>
                <rect width="20" height="{count(//PC[text()]/tokenize(., ' ')) div 10}" x="60" y="{(count(//PC[text()]/tokenize(., ' ')) div 10) * -1}" fill="#08E8DE"/>
                <rect width="20" height="{count(//NPC[text()]/tokenize(., ' ')) div 10}" x="80" y="{(count(//NPC[text()]/tokenize(., ' ')) div 10) * -1}" fill="#FFF000"/>
                <rect width="20" height="{count(//setting[text()]/tokenize(., ' ')) div 10}" x="100" y="{(count(//setting[text()]/tokenize(., ' ')) div 10) * -1}" fill="#FFAA1D"/>
                <rect width="20" height="{count(//lore[text()]/tokenize(., ' ')) div 10}" x="120" y="{(count(//lore[text()]/tokenize(., ' ')) div 10) * -1}" fill="#FF007F"/>
                <rect width="20" height="{count(//dev[text()]/tokenize(., ' ')) div 10}" x="140" y="{(count(//dev[text()]/tokenize(., ' ')) div 10) * -1}" fill="#B19CD9"/>
                <!--X axis --> 
                <line x1="20" y1="0" x2="180" y2="0" stroke="black"/>
                <!--Y axis -->
                <line x1="20" y1="0" x2="20" y2="-350" stroke="black"/>
                <text x="100"  y="20" style="text-anchor: middle" font-family="sans-serif">BioShock</text>
                <text x="100"  y="40" style="text-anchor: middle" font-family="sans-serif">Page length: <xsl:value-of select="count(//pb)"/></text>
            </g>
        </svg>
    </xsl:template>
    
</xsl:stylesheet>