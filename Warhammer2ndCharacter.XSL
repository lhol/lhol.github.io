<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:saxon="http://saxon.sf.net/">
<xsl:output
	method = "xml"
	encoding = "iso-8859-1"
/>

  <xsl:template match="/">
  <html>
  <body>
		<xsl:for-each select="//character">
            
            <h2>Skills</h2>
            <table>
				<tbody>
					<tr>
						<th>Skill</th>
						<th>Basisattribut</th>
						<th>Skillroll</th>
					</tr>
					<xsl:for-each select="advancedskills/*">
						<tr>
							<td>
								adv: <xsl:value-of select="name" />
							</td>
							<td>
								<xsl:value-of select="statname" />
							</td>
							<td>
								<xsl:value-of select="stat" />
							</td>
						</tr>
					</xsl:for-each>
					<xsl:for-each select="basicskills/*">
						<tr>
							<td>
								bas: <xsl:value-of select="name" />
							</td>
							<td>
								<xsl:value-of select="statname" />
							</td>
							<td>
								<xsl:value-of select="stat" />
							</td>
						</tr>
					</xsl:for-each>
				</tbody>
            </table>
            
            <h2>Waffen</h2>
            <table>
            <tr>
            <td>Name</td><td>Attack</td><td>MightyBonus</td><td>Parry</td><td>Damage</td><td>Strength</td></tr>
            <xsl:for-each select="weaponlist/*">
                        <tr>
                            <td><xsl:value-of select="name" /></td>
                            <xsl:if test="class=Melee">
                                WS:<xsl:value-of select="attack/weapon" />
                                <td><xsl:value-of select="mightyblow" /></td>
                            </xsl:if>
                            <xsl:if test="class=Ranged">
                                WS:<xsl:value-of select="attack/ballistic" />
                                <td><xsl:value-of select="mightyshot" /></td>
                            </xsl:if>
                            <td><xsl:value-of select="parryroll" /></td>
                            <td><xsl:value-of select="damagedice" /></td>
                            <td><xsl:value-of select="damagebonus" /></td>
                        </tr>
			</xsl:for-each>
            </table>


            

</body>
</html>

  
</xsl:stylesheet>
