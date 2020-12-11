<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/2000/svg">
    
    <xsl:output method="xml" indent="yes"/> 
    <xsl:variable name="Xinterval" select="100"/>
    <xsl:variable name="Ystretcher" select="-5"/>
    <xsl:variable name="docs" select="collection('../XML?select=*.xml')"/>
    
    <xsl:template match="/">
        <xsl:apply-templates select="$docs/GamePitch/document"/>
    </xsl:template>
    
    <xsl:template match="$docs/GamePitch/document">
        <xsl:comment><xsl:value-of select="ancestor::GamePitch/meta/title"/></xsl:comment>
        <xsl:comment>Non-playable Characters: <xsl:value-of select="count(//NPC[text()]/tokenize(., ' '))"/></xsl:comment>
        <xsl:comment>Playable Characters: <xsl:value-of select="count(//PC[text()]/tokenize(., ' '))"/></xsl:comment>
        <xsl:comment>Lore: <xsl:value-of select="count(//lore[text()]/tokenize(., ' '))"/></xsl:comment>
        <xsl:comment>Development/Marketing: <xsl:value-of select="count(//dev[text()]/tokenize(., ' '))"/></xsl:comment>
    <xsl:comment>Setting: <xsl:value-of select="count(//setting[text()]/tokenize(., ' '))"/></xsl:comment>
    <xsl:comment>Gameplay: <xsl:value-of select="count(//GP[text()]/tokenize(., ' '))"/></xsl:comment>
        
        <svg width="100%" height="100%">
            <g transform="translate(50, 500)">
                <rect width="20" height="{count(//GP[text()]/tokenize(., ' ')) div 5}" x="40" y="{(count(//GP[text()]/tokenize(., ' ')) div 5) * -1}" fill=""/>
            </g>
        </svg>
    </xsl:template>
    
    
    
</xsl:stylesheet>