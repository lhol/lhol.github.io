<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
  <html>
  <body>
	  <xsl:for-each select="//character">

		  <table>
			  <tbody>
				  <tr>
					  <th>Name</th>
					  <th>Starting</th>
					  <th>Improvement</th>
					  <th>Advance Scheme</th>
					  <th>Taken (check)</th>
					  <th>Current Value</th>
				  </tr>
				  <tr>
					  <td>
						  <xsl:value-of select="abilities/base_weapon" />
					  </td>
					  <td>
						  <xsl:value-of select="abilities/adv_weapon" />
					  </td>
					  <td>
						  <xsl:value-of select="abilities/wpscheme" />
					  </td>
					  <td>
						  <xsl:value-of select="wptaken" />
					  </td>
					  <td>
						  <xsl:value-of select="weapon" />
					  </td>
				  </tr>
			  </tbody>
		  </table>

            
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

			<!-- End of Character -->
		</xsl:for-each>

</body>
</html>
  </xsl:template>
  
</xsl:stylesheet>
