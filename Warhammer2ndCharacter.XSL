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


            <div id="page1" class="page">
				<img class="pagebg" src='http://www.fantasygrounds.com/images/charsheets/DDALRoD_CharacterSheet_Page_1.jpg' style="position: absolute; top: 0; left: 0; height: 7.5in; z-index: -1;" />		
			
				<!-- Layout basic info -->
				<div class="sheetDataBig" style="top: 66; left: 65;"><xsl:value-of select="name" /></div>
				<!-- Top Line data -->
				<div class="sheetData" style="top: 38; left: 265;"><xsl:value-of select="background" /></div>
				<div class="sheetData" style="top: 38; left: 430;"><xsl:value-of select="faction" /></div>
				
				
				<!-- 2nd line data -->
				<div class="sheetData" style="top: 65; left: 185;"><xsl:value-of select="race" /></div>
				<div class="sheetData" style="top: 65; left: 265;"><xsl:value-of select="alignment" /></div>
				<div class="sheetData" style="top: 65; left: 365;"><xsl:value-of select="exp" /></div>
				<div class="sheetData" style="top: 65; left: 430;"><xsl:value-of select="dci" /></div>


				<!-- Page 1 2nd column -->
				<!-- Proficiency Bonus -->				
				<div class="sheetDataSmall" style="top: 153; left: 92;"><xsl:if test="profbonus >= 0">+</xsl:if><xsl:value-of select="profbonus" /></div>
				<!-- Saves -->
				<div class="sheetDataSmall" style="top: 183; left: 101;"><xsl:if test="abilities/strength/save >= 0">+</xsl:if><xsl:value-of select="abilities/strength/save" /></div>
				<div class="sheetDataSmall" style="top: 195; left: 101;"><xsl:if test="abilities/dexterity/save >= 0">+</xsl:if><xsl:value-of select="abilities/dexterity/save" /></div>
				<div class="sheetDataSmall" style="top: 207; left: 101;"><xsl:if test="abilities/constitution/save >= 0">+</xsl:if><xsl:value-of select="abilities/constitution/save" /></div>
				<div class="sheetDataSmall" style="top: 219; left: 101;"><xsl:if test="abilities/intelligence/save >= 0">+</xsl:if><xsl:value-of select="abilities/intelligence/save" /></div>
				<div class="sheetDataSmall" style="top: 231; left: 101;"><xsl:if test="abilities/wisdom/save >= 0">+</xsl:if><xsl:value-of select="abilities/wisdom/save" /></div>
				<div class="sheetDataSmall" style="top: 243; left: 101;"><xsl:if test="abilities/charisma/save >= 0">+</xsl:if><xsl:value-of select="abilities/charisma/save" /></div>
				<!-- Skills -->
				<div class="sheetDataSmall" style="top: 287; left: 101;"><xsl:if test="skilllist/*[name='Acrobatics']/total >= 0">+</xsl:if><xsl:value-of select="skilllist/*[name='Acrobatics']/total" /></div>
				<div class="sheetDataSmall" style="top: 299; left: 101;"><xsl:if test="skilllist/*[name='Animal Handling']/total >= 0">+</xsl:if><xsl:value-of select="skilllist/*[name='Animal Handling']/total" /></div>
				<div class="sheetDataSmall" style="top: 311; left: 101;"><xsl:if test="skilllist/*[name='Arcana']/total >= 0">+</xsl:if><xsl:value-of select="skilllist/*[name='Arcana']/total" /></div>
				<div class="sheetDataSmall" style="top: 324; left: 101;"><xsl:if test="skilllist/*[name='Athletics']/total >= 0">+</xsl:if><xsl:value-of select="skilllist/*[name='Athletics']/total" /></div>
				<div class="sheetDataSmall" style="top: 336; left: 101;"><xsl:if test="skilllist/*[name='Deception']/total >= 0">+</xsl:if><xsl:value-of select="skilllist/*[name='Deception']/total" /></div>
				<div class="sheetDataSmall" style="top: 348; left: 101;"><xsl:if test="skilllist/*[name='History']/total >= 0">+</xsl:if><xsl:value-of select="skilllist/*[name='History']/total" /></div>
				<div class="sheetDataSmall" style="top: 360; left: 101;"><xsl:if test="skilllist/*[name='Insight']/total >= 0">+</xsl:if><xsl:value-of select="skilllist/*[name='Insight']/total" /></div>
				<div class="sheetDataSmall" style="top: 372; left: 101;"><xsl:if test="skilllist/*[name='Intimidation']/total >= 0">+</xsl:if><xsl:value-of select="skilllist/*[name='Intimidation']/total" /></div>
				<div class="sheetDataSmall" style="top: 386; left: 101;"><xsl:if test="skilllist/*[name='Investigation']/total >= 0">+</xsl:if><xsl:value-of select="skilllist/*[name='Investigation']/total" /></div>
				<div class="sheetDataSmall" style="top: 398; left: 101;"><xsl:if test="skilllist/*[name='Medicine']/total >= 0">+</xsl:if><xsl:value-of select="skilllist/*[name='Medicine']/total" /></div>
				<div class="sheetDataSmall" style="top: 410; left: 101;"><xsl:if test="skilllist/*[name='Nature']/total >= 0">+</xsl:if><xsl:value-of select="skilllist/*[name='Nature']/total" /></div>
				<div class="sheetDataSmall" style="top: 422; left: 101;"><xsl:if test="skilllist/*[name='Perception']/total >= 0">+</xsl:if><xsl:value-of select="skilllist/*[name='Perception']/total" /></div>
				<div class="sheetDataSmall" style="top: 434; left: 101;"><xsl:if test="skilllist/*[name='Performance']/total >= 0">+</xsl:if><xsl:value-of select="skilllist/*[name='Performance']/total" /></div>
				<div class="sheetDataSmall" style="top: 446; left: 101;"><xsl:if test="skilllist/*[name='Persuasion']/total >= 0">+</xsl:if><xsl:value-of select="skilllist/*[name='Persuasion']/total" /></div>
				<div class="sheetDataSmall" style="top: 459; left: 101;"><xsl:if test="skilllist/*[name='Religion']/total >= 0">+</xsl:if><xsl:value-of select="skilllist/*[name='Religion']/total" /></div>
				<div class="sheetDataSmall" style="top: 472; left: 101;"><xsl:if test="skilllist/*[name='Sleight of Hand']/total >= 0">+</xsl:if><xsl:value-of select="skilllist/*[name='Sleight of Hand']/total" /></div>
				<div class="sheetDataSmall" style="top: 484; left: 101;"><xsl:if test="skilllist/*[name='Stealth']/total >= 0">+</xsl:if><xsl:value-of select="skilllist/*[name='Stealth']/total" /></div>
				<div class="sheetDataSmall" style="top: 496; left: 101;"><xsl:if test="skilllist/*[name='Survival']/total >= 0">+</xsl:if><xsl:value-of select="skilllist/*[name='Survival']/total" /></div>
				
				<!-- Passive Perception -->
				<div class="sheetDataSmall" style="top: 535; left: 32;"><xsl:value-of select="perception" /></div>
				
				<!-- AC, Initiative and Speed -->
				<div class="sheetDataBig" style="top: 125; left: 208;"><xsl:value-of select="defenses/ac/total" /></div>
				<div class="sheetDataBig" style="top: 125; left: 260;"><xsl:if test="initiative/total">+</xsl:if><xsl:value-of select="initiative/total" /></div>
				<div class="sheetDataBig" style="top: 125; left: 313;"><xsl:value-of select="speed/total" /></div>
				
				<!-- HP -->
				<div class="sheetDataBig" style="top: 185; left: 260;"><xsl:value-of select="hp/total" /></div>
				
				<!-- Class and Level -->
				<div class="sheetDataSmall"  style="top: 47; left: 185;display: table-cell; vertical-align: bottom; height: 20; width: 80; ">
				<!-- Abbreviate if more than 1 class -->
				<xsl:if test="count(classes/*) &gt; 1">
					<xsl:for-each select="classes/*">
						<xsl:value-of select="substring(concat(name,'   '),1,3)" />(<xsl:value-of select="level" />) 
					</xsl:for-each>				
				</xsl:if>
				<!-- otherwise show the full class name -->
				<xsl:if test="count(classes/*) &lt; 2">
					<xsl:for-each select="classes/*">
						<xsl:value-of select="name" />(<xsl:value-of select="level" />)
					</xsl:for-each>
				</xsl:if>
				</div>
				<!-- Hit Die -->
				<div class="sheetDataSmall"  style="top: 300; left: 208;display: table-cell; vertical-align: bottom; height: 40; width: 65;">
				<xsl:for-each select="classes/*">
					<xsl:call-template name="checkboxes">
						<xsl:with-param name="index" select="1" />
						<xsl:with-param name="total" select="level" />
					</xsl:call-template>
					<xsl:value-of select="hddie" />
					<xsl:text> </xsl:text>
				</xsl:for-each>
				</div>
				
				<!-- Personality Traits -->
				<div class="sheetDataXSmall" style="top: 125; left: 380;width: 140;"><xsl:value-of select="personalitytraits" /></div>
				<div class="sheetDataXSmall" style="top: 185; left: 380;width: 140;"><xsl:value-of select="ideals" /></div>
				<div class="sheetDataXSmall" style="top: 235; left: 380;width: 140;"><xsl:value-of select="bonds" /></div>
				<div class="sheetDataXSmall" style="top: 285; left: 380;width: 140;"><xsl:value-of select="flaws" /></div>
				
				<!-- Features and Traits -->
				<div class="sheetDataXSmall" style="top: 355; left: 380;width: 140;">
				<xsl:for-each select="featurelist/*">
					<xsl:value-of select="name" /><br />
				</xsl:for-each>
				<xsl:for-each select="traitlist/*">
					<xsl:value-of select="name" /><br />
				</xsl:for-each>
				</div>
				
				
				<!-- Languages and Proficiencies -->
				<div class="sheetDataXSmall" style="top: 570; left: 32;width: 140;">
				<!-- languages -->
				<xsl:if test="count(languagelist/*) &gt; 0">
					Langagues. 
				</xsl:if>
				<xsl:for-each select="languagelist/*">
					<xsl:if test="(position() &gt; 1)">, </xsl:if>
					<xsl:value-of select="name" />
				</xsl:for-each>
				<xsl:if test="count(languagelist/*) &gt; 0">;<xsl:text> </xsl:text></xsl:if>
				<!-- Proficiency List -->
				<xsl:if test="count(languagelist/*) &gt; 0">
					<br />Proficiencies: 
				</xsl:if>
				<xsl:for-each select="proficiencylist/*">
					<xsl:if test="(position() &gt; 1)">, </xsl:if>
					<xsl:value-of select="name" />
				</xsl:for-each>
				<xsl:if test="count(proficiencylist/*) &gt; 0">;<xsl:text> </xsl:text></xsl:if>
				</div>
				
				<!-- Weapons and Attacks -->
				<div class="sheetDataXSmall" style="top: 355; left: 200;width: 140;">
				<table width="100%">
				<col width="46%" />
				<col width="24%" />
				<col width="30%" />
				
				</table>
				</div>
				
				<!-- Equipment -->
				<div class="sheetDataXSmall" style="top: 540; left: 250;width: 105;">
				<xsl:for-each select="inventorylist/*">
					<xsl:value-of select="name" /><xsl:if test="quantity &gt; 1">(<xsl:value-of select="count" />)</xsl:if>, 
				</xsl:for-each>
				</div>
				<!-- Coins -->
				<div class="sheetDataXSmall" style="top: 545; left: 210;">
				<xsl:value-of select="coins/*[name='cp']/amount" />
				</div>
				<div class="sheetDataXSmall" style="top: 570; left: 210;">
				<xsl:value-of select="coins/*[name='sp']/amount" />
				</div>
				<div class="sheetDataXSmall" style="top: 593; left: 210;">
				<xsl:value-of select="coins/*[name='ep']/amount" />
				</div>
				<div class="sheetDataXSmall" style="top: 616; left: 210;">
				<xsl:value-of select="coins/*[name='gp']/amount" />
				</div>
				<div class="sheetDataXSmall" style="top: 640; left: 210;">
				<xsl:value-of select="coins/*[name='pp']/amount" />
				</div>
				
								
				
			</div>
			<div id="page1" class="page">
				<img class="pagebg" src='http://www.fantasygrounds.com/images/charsheets/DDALRoD_CharacterSheet_Page_2.jpg' style="position: absolute; top: 0; left: 0; z-index: -1;" />		
				
				<!-- Layout basic info -->
				<div class="sheetDataBig" style="top: 66; left: 65;"><xsl:value-of select="name" /></div>
			
				<!-- Layout basic info -->
				<div class="sheetDataBig" style="top: 66; left: 65;"><xsl:value-of select="name" /></div>
				<!-- Top Line data -->
				<div class="sheetData" style="top: 38; left: 185;"><xsl:value-of select="age" /> (<xsl:value-of select="gender" />)</div>
				<div class="sheetData" style="top: 38; left: 320;"><xsl:value-of select="height" /></div>
				<div class="sheetData" style="top: 38; left: 430;"><xsl:value-of select="weight" /></div>

			
			</div>
			<!-- End of Character -->
		</xsl:for-each>

</body>
</html>
  </xsl:template>
  
	<xsl:template name="checkboxes">
		<xsl:param name="index" />
		<xsl:param name="total" />
	
		<span style="font-family: times new roman;font-size: 8pt;"><input style="font-size: xx-small;" type="checkbox" /></span>
		
		<!-- Loop processing. Wish we could use XSLT 2.0 -->
		<xsl:if test="not($index = $total)">
			<xsl:call-template name="checkboxes">
				<xsl:with-param name="index" select="$index + 1" />
				<xsl:with-param name="total" select="$total" />
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
  
  
</xsl:stylesheet>
