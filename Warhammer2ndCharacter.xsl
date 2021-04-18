<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
  <html>
  <body>
	  <xsl:for-each select="//character">
		  <h1>
			  Character: <xsl:value-of select="name" />, <xsl:value-of select="currentcareer" /> from <xsl:value-of select="birthplace" />
		  </h1>
		  Previous Careers: <xsl:value-of select="previouscareers" />
		  <h2>Attributes</h2>
		  <table border="1">
			  <tbody>
				  <tr>
								  <th></th>
								  <td>M</td>
								  <td>WS</td>
								  <td>BS</td>
								  <td>S</td>
								  <td>T</td>
								  <td>W</td>
								  <td>I</td>
								  <td>A</td>
								  <td>Ag</td>
								  <td>Dex</td>
								  <td>Ld</td>
								  <td>Int</td>
								  <td>Cl</td>
								  <td>WP</td>
								  <td>Fel</td>
							  </tr>
							  <tr>
								  <th>Starting</th>
								  <td>
									  <xsl:value-of select="abilities/base_movement" />
								  </td>
								  <td>
									  <xsl:value-of select="abilities/base_weapon" />
								  </td>
								  <td>
									  <xsl:value-of select="abilities/base_ballistic" />
								  </td>
								  <td>
									  <xsl:value-of select="abilities/base_strength" />
								  </td>
								  <td>
									  <xsl:value-of select="abilities/base_toughness" />
								  </td>
								  <td>
									  <xsl:value-of select="abilities/base_wounds" />
								  </td>
								  <td>
									  <xsl:value-of select="abilities/base_initiative" />
								  </td>
								  <td>
									  <xsl:value-of select="abilities/base_attack" />
								  </td>
								  <td>
									  <xsl:value-of select="abilities/base_agility" />
								  </td>
								  <td>
									  <xsl:value-of select="abilities/base_dexterity" />
								  </td>
								  <td>
									  <xsl:value-of select="abilities/base_leadership" />
								  </td>
								  <td>
									  <xsl:value-of select="abilities/base_intelligence" />
								  </td>
								  <td>
									  <xsl:value-of select="abilities/base_coolness" />
								  </td>
								  <td>
									  <xsl:value-of select="abilities/base_willpower" />
								  </td>
								  <td>
									  <xsl:value-of select="abilities/base_leadership" />
								  </td>

							  </tr>
							  <tr>
								  <th>Advance Scheme</th>
								  <td>
									  <xsl:value-of select="mv_advtaken" />
								  </td>
								  <td>
									  <xsl:value-of select="ws_advtaken" />
								  </td>
								  <td>
									  <xsl:value-of select="bs_advtaken" />
								  </td>
								  <td>
									  <xsl:value-of select="str_advtaken" />
								  </td>
								  <td>
									  <xsl:value-of select="tn_advtaken" />
								  </td>
								  <td>
									  <xsl:value-of select="wnd_advtaken" />
								  </td>
								  <td>
									  <xsl:value-of select="ini_advtaken" />
								  </td>
								  <td>
									  <xsl:value-of select="attk_advtaken" />
								  </td>
								  <td>
									  <xsl:value-of select="ag_advtaken" />
								  </td>
								  <td>
									  <xsl:value-of select="dex_advtaken" />
								  </td>
								  <td>
									  <xsl:value-of select="ld_advtaken" />
								  </td>
								  <td>
									  <xsl:value-of select="int_advtaken" />
								  </td>
								  <td>
									  <xsl:value-of select="cl_advtaken" />
								  </td>
								  <td>
									  <xsl:value-of select="will_advtaken" />
								  </td>
								  <td>
									  <xsl:value-of select="fel_advtaken" />
								  </td>

							  </tr>
							  <tr>
								  <th>Current Value</th>
								  <td>
									  <xsl:value-of select="abilities/movement" />
								  </td>
								  <td>
									  <xsl:value-of select="abilities/weapon" />
								  </td>
								  <td>
									  <xsl:value-of select="abilities/ballistic" />
								  </td>
								  <td>
									  <xsl:value-of select="abilities/strength" />
								  </td>
								  <td>
									  <xsl:value-of select="abilities/toughness" />
								  </td>
								  <td>
									  <xsl:value-of select="abilities/wounds" />
								  </td>
								  <td>
									  <xsl:value-of select="abilities/initiative" />
								  </td>
								  <td>
									  <xsl:value-of select="abilities/attack" />
								  </td>
								  <td>
									  <xsl:value-of select="abilities/agility" />
								  </td>
								  <td>
									  <xsl:value-of select="abilities/dexterity" />
								  </td>
								  <td>
									  <xsl:value-of select="abilities/leadership" />
								  </td>
								  <td>
									  <xsl:value-of select="abilities/intelligence" />
								  </td>
								  <td>
									  <xsl:value-of select="abilities/coolness" />
								  </td>
								  <td>
									  <xsl:value-of select="abilities/willpower" />
								  </td>
								  <td>
									  <xsl:value-of select="abilities/leadership" />
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
					  <xsl:if test="skilltrained=1">
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
					  </xsl:if>
				  </xsl:for-each>
			  </tbody>
		  </table>
		  <h2>Talents</h2>
		  <table>
			  <tbody>
				  <tr>
					  <th>Name</th>
				  </tr>
				  <xsl:for-each select="talentlist/*">
					  <tr>
						  <td>
							  <xsl:value-of select="name" />
						  </td>
					  </tr>
				  </xsl:for-each>
			  </tbody>
		  </table>

		  <h2>Weapons</h2>
		  <table>
			  <tr>
				  <td>Name</td>
				  <td>Attack*</td>
				  <td>MightyBonus</td>
				  <td>Parry*</td>
				  <td>Damage</td>
				  <td>Damagebonus</td>
				  <td>Modifiers</td>
				  <td>Range</td>
				  <td>Ammunition</td>
			  </tr>
			  <xsl:for-each select="weaponlist/*">
				  <tr>
					  <td>
						  <xsl:value-of select="name" />
					  </td>
					  <td>
					  <xsl:if test="class = 'Melee'">
						  WS:<xsl:value-of select="attack/weapon" />
					  </xsl:if>
					  <xsl:if test="class = 'Ranged'">
						  BS:<xsl:value-of select="attack/ballistic" />
					  </xsl:if>
					  </td>
					  <td>
						  <xsl:if test="class = 'Melee'">
							  <xsl:value-of select="mightyblow" />
						  </xsl:if>
						  <xsl:if test="class = 'Ranged'">
							  <xsl:value-of select="mightyshot" />
						  </xsl:if>
					  </td>

					  <td>
						  <xsl:if test="class = 'Melee'">
							  <xsl:value-of select="parryroll" />
						  </xsl:if>
						  <xsl:if test="class = 'Ranged'">
							  **
						  </xsl:if>
					  </td>
					  <td>
						  <xsl:value-of select="damagedice" />
					  </td>
					  <td>
						  <xsl:value-of select="damagebonus" />
					  </td>
					  <td>
						  <xsl:value-of select="group" />
					  </td>
					  <td>
						  <xsl:if test="class = 'Ranged'">
							  <xsl:value-of select="range" />
						  </xsl:if>
					  </td>
					  <td>
						  <xsl:if test="class = 'Ranged'">
							  <xsl:value-of select="ammo" />
						  </xsl:if>
					  </td>
				  </tr>
			  </xsl:for-each>
		  </table>
		  * check for additional Modifiers (P/WS=+-X)<br></br>
		  ** WS-10 if learned improvied Weapons, otherwise WS/2

<h2>Lanuguaes</h2>
<table>
		  <tbody>
			  <tr>
				  <th>Language</th>
				  <th>Basisattribut</th>
				  <th>Skillroll</th>
			  </tr>
			  <xsl:for-each select="languagelist/*">
				  <tr>
					  <td>
						  <xsl:value-of select="name" />
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

		  <h2>Inventory</h2>
		  <table>
			  <tbody>
				  <tr>
					  <th>Gegenstand</th>
					  <th>Anzahl</th>
					  <th>Gewicht</th>
				  </tr>
				  <xsl:for-each select="inventorylist/*">
					  <tr>
						  <td>
							  <xsl:value-of select="name" />
						  </td>
						  <td>
							  <xsl:value-of select="count" />
						  </td>
						  <td>
							  <xsl:value-of select="encumbrance" />
						  </td>
					  </tr>
				  </xsl:for-each>
			  </tbody>
		  </table>

		  <h2>
			  Sonstiges
		  </h2>
		  <ul>
			  <li>Max. Magicpoints: ___</li>
			  <li>Fatepoints: ___ </li>
			  <li>Luck: Once an envening 1D6</li>
			  <li>Playernotes: <xsl:value-of select="playerrefnotes" /></li>
			  <li>otherAbilities: <xsl:value-of select="otherabilities" /></li>
		  </ul>
		  
		  <h2>XP ausgegeben: <xsl:value-of select="xp/totalspent" /> von <xsl:value-of select="totalxpamount" /> </h2>
		  <table>
			  <tbody>
				  <tr>
					  <th>Anzahl</th>
					  <th>ausgegeben für</th>
				  </tr>
				  <xsl:for-each select="xpspent/*">
					  <tr>
						  <td>
							  <xsl:value-of select="name" />
						  </td>
						  <td>
							  <xsl:value-of select="pointsspent" />
						  </td>
					  </tr>
				  </xsl:for-each>
			  </tbody>
		  </table>



		  <!-- End of Character -->
	  </xsl:for-each>

</body>
</html>
  </xsl:template>
  
</xsl:stylesheet>