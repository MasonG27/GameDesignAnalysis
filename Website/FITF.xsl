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
                <text x="100"  y="20" style="text-anchor: middle" font-family="sans-serif">Flame in the Flood</text>
                <text x="100"  y="40" style="text-anchor: middle" font-family="sans-serif">Page length: <xsl:value-of select="count(//pb)"/></text>
                <text x="10"  y="0" style="text-anchor: end" font-family="sans-serif">0</text>
                <text x="10"  y="{(250 div 10) * -1}" style="text-anchor: end" font-family="sans-serif" font-size="10px">250</text>
                <text x="10"  y="{(500 div 10) * -1}" style="text-anchor: end" font-family="sans-serif">500</text>
                <text x="10"  y="{(750 div 10) * -1}" style="text-anchor: end" font-family="sans-serif" font-size="10px">750</text>
                <text x="10"  y="{(1000 div 10) * -1}" style="text-anchor: end" font-family="sans-serif">1000</text>
                <text x="10"  y="{(1250 div 10) * -1}" style="text-anchor: end" font-family="sans-serif" font-size="10px">1250</text>
                <text x="10"  y="{(1500 div 10) * -1}" style="text-anchor: end" font-family="sans-serif">1500</text>
                <text x="10"  y="{(1750 div 10) * -1}" style="text-anchor: end" font-family="sans-serif" font-size="10px">1750</text>
                <text x="10"  y="{(2000 div 10) * -1}" style="text-anchor: end" font-family="sans-serif">2000</text>
                <text x="10"  y="{(2250 div 10) * -1}" style="text-anchor: end" font-family="sans-serif" font-size="10px">2250</text>
                <text x="10"  y="{(2500 div 10) * -1}" style="text-anchor: end" font-family="sans-serif">2500</text>
                <text x="10"  y="{(2750 div 10) * -1}" style="text-anchor: end" font-family="sans-serif" font-size="10px">2750</text>
                <text x="10"  y="{(3000 div 10) * -1}" style="text-anchor: end" font-family="sans-serif">3000</text>
                <text x="10"  y="{(3250 div 10) * -1}" style="text-anchor: end" font-family="sans-serif" font-size="10px">3250</text>
                <text x="10"  y="{(3500 div 10) * -1}" style="text-anchor: end" font-family="sans-serif">3500</text>
                <line x1="60" y1="52" x2="140" y2="52" stroke="black"/>
                <text x="100"  y="70" style="text-anchor: middle" font-family="sans-serif" font-size="12px">Image-to-Paragraph Ratio: <xsl:value-of select="round(count(//img) div count(//p), 2) * 100"/>%</text>
            </g>
        </svg>
    </xsl:template>
    
</xsl:stylesheet>