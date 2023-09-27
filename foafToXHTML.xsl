<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
    xmlns:foaf="http://xmlns.com/foaf/0.1/">
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Page FOAF de Justin Reverdy</title>
            </head>
            <body>
                <h1>Profil FOAF de Justin Reverdy</h1>
                <p>Nom complet: <xsl:value-of select="/rdf:RDF/foaf:Person/foaf:name"/></p>
                <p>Titre: <xsl:value-of select="/rdf:RDF/foaf:Person/foaf:title"/></p>
                <p>Prénom: <xsl:value-of select="/rdf:RDF/foaf:Person/foaf:givenname"/></p>
                <p>Nom de famille: <xsl:value-of select="/rdf:RDF/foaf:Person/foaf:family_name"/></p>
                <p>Date de naissance: <xsl:value-of select="/rdf:RDF/foaf:Person/foaf:dateOfBirth"/></p>
                <p>Adresse e-mail (SHA1): <xsl:value-of select="/rdf:RDF/foaf:Person/foaf:mbox_sha1sum"/></p>
                <p>Page personnelle: <a href="<xsl:value-of select="/rdf:RDF/foaf:Person/foaf:homepage/@rdf:resource"/>"><xsl:value-of select="/rdf:RDF/foaf:Person/foaf:homepage/@rdf:resource"/></a></p>
                <h2>Connaissances</h2>
                <ul>
                    <xsl:for-each select="/rdf:RDF/foaf:knows/foaf:Person">
                        <li>
                            <a href="{@rdf:about}"><xsl:value-of select="foaf:name"/></a>
                            <p>Adresse e-mail (SHA1): <xsl:value-of select="foaf:mbox_sha1sum"/></p>
                            <p>Plus d'informations: <a href="{rdfs:seeAlso/@rdf:resource}"><xsl:value-of select="rdfs:seeAlso/@rdf:resource"/></a></p>
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
