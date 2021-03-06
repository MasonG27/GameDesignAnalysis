<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="xhtml" encoding="utf-8"
        omit-xml-declaration="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Flame in the Flood Game Pitch</title>
                <link type="text/css" href="style.css" rel="stylesheet"/>
            </head>
            <body>
                <xsl:comment>#include virtual="menu.html" </xsl:comment>
                <xsl:comment>#include virtual="legend.html" </xsl:comment>
                <h2>Flame in the Flood Game Pitch</h2>
                <img src="{//start_page/img/@src}" alt="{//start_page/img/@alt}"/>
                <div class="intro">
                    <xsl:apply-templates select="//document/intro"/>
                </div>
                <xsl:apply-templates select="//document/section"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="//document/intro">
        <xsl:if test="title"><xsl:apply-templates select="title"/></xsl:if>
        <xsl:apply-templates select="p"/>
    </xsl:template>
    
    <xsl:template match="//*[name()='title']">
        <h3 class="#{ancestor::section/@name}"><xsl:value-of select="."/></h3>
    </xsl:template>
    
    <xsl:template match="//*[name()='p']">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    
    <xsl:template match="//document/section">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="//*[name()='subTitle']">
        <h4><xsl:value-of select="."/></h4>
    </xsl:template>
    
    <xsl:template match="//*[name()='img']">
        <img src="{./@src}" alt="{./@alt}"/>
    </xsl:template>
    
    <xsl:template match="descendant::dev"><span class="dev"><xsl:value-of select="."/></span></xsl:template>
    <xsl:template match="descendant::GP"><span class="GP"><xsl:value-of select="."/></span></xsl:template>
    <xsl:template match="descendant::setting"><span class="setting"><xsl:value-of select="."/></span></xsl:template>
    <xsl:template match="descendant::lore"><span class="lore"><xsl:value-of select="."/></span></xsl:template>
    <xsl:template match="descendant::PC"><span class="PC"><xsl:value-of select="."/></span></xsl:template>
    <xsl:template match="descendant::NPC"><span class="NPC"><xsl:value-of select="."/></span></xsl:template>
    
    <xsl:template match="//*[name()='quote']">
        <i>"<xsl:value-of select="."/>"</i>
    </xsl:template>
    
</xsl:stylesheet>