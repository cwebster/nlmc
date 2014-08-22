<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:nlmc="urn:nhs-rcpath-nlmc:v1">
<xsl:template match="/">
    
	<xsl:for-each select="/nlmc:NLMC_Catalogue/NLMC_Test">
		
<div class="row">
	<div class="col-xs-6">	
	<div class="panel panel-info">
		<div class="panel-heading">
			<span class="label label-info">
					<xsl:value-of select="FullName"/>
			</span>
			<span class="label label-info">
				<xsl:value-of select="NLMC_ID"/>
			</span>
		</div>
		
	<div class="panel-body">
		<xsl:for-each select="CollectedSpecimen"><p></p>
			<span class="label label-default">Specimen Type: 
				<xsl:value-of select="CollectedSpecimen/@type" />
			</span>
			<span class="label label-primary"><xsl:value-of select="@type" /></span> => 
			<span class="label label-default">Collection Method(s)</span> => 
			<span class="label label-info">
				<xsl:value-of select="CollectionMethod/@method" />
			</span>
		</xsl:for-each>
	
		<p></p>
 		
		<xsl:for-each select="NLMC_TestMetaData/MetaTestNames">
			<span class="label label-default">Alternative name: </span>
			<span class="label label-info"><xsl:value-of select="@displayName" /></span>
 		</xsl:for-each>
		<p></p>
 		
		<xsl:for-each select="NLMC_TestMetaData/Disciplines">
			<span class="label label-primary">Discipline: </span>
			<span class="label label-info">
				<xsl:value-of select="Discipline/@name" />
			</span>
 		
		</xsl:for-each>

	</div>
</div>
</div>
</div>
      </xsl:for-each>

</xsl:template>
</xsl:stylesheet>
