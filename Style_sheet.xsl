<?xml version="1.0" encoding="UTF-8"?>

<!--
 * Copyright (c) 2001-2020 Convertigo SA.
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Affero General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, see<http://www.gnu.org/licenses/>.
 *
 * $URL$
 * $Author$
 * $Revision$
 * $Date$
-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:lxslt="http://xml.apache.org/xslt">
	<xsl:output encoding="UTF-8" media-type="text/plain" method="text"/>
	
	<!-- Carriage return parameter definition -->
	<xsl:param name="break" select="'&#xA;'" />
	
	<!-- Delimiter parameter definition -->
	<xsl:param name="delimiteur" select="'|'" />

	<xsl:template match="document">
		<!-- Creating column name line based on first element children names -->
		<xsl:for-each select="people/Object[1]/child::*">
			<xsl:value-of select="name()"/>
			<xsl:if test="position() != last()">
				<xsl:value-of select="$delimiteur"/>
			</xsl:if>
		</xsl:for-each>
		<xsl:value-of select="$break"/>
		<xsl:apply-templates/>
	</xsl:template>
	
	<!-- For each Object display value of children -->
	<!-- Adding delimiter except for last child element -->
	<!-- Adding a new line at the end -->
	<xsl:template match="Object">
		<xsl:for-each select="child::*">
			<xsl:value-of select="."/>
			<xsl:if test="position() != last()">
				<xsl:value-of select="$delimiteur"/>
			</xsl:if>
		</xsl:for-each>
		<xsl:value-of select="$break"/>
	</xsl:template>
	
</xsl:stylesheet>