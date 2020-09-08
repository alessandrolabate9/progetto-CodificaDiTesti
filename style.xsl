<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns="http://www.w3.org/1999/xhtml" >
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        
        <html>

            <head>
                <title><xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:title" /></title>
                <meta charset="utf-8"></meta>
                <meta name="description" content="Progetto di Codifica di Testi"></meta>
                <meta name="author" content="Alessandro Labate"></meta>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
                <script src="js/stick.js"></script>
                <script src="js/foto.js"></script>
                <script src="js/messaggio.js"></script>
                <script src="js/modal.js"></script>
                <link rel="stylesheet" type="text/css" href="css/style.css" />
                <link rel="icon" href="img/index.ico" type="img/ico" sizes="16x16" />
            </head>
           <body>
                <h1><xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:title" /></h1>
                <header id="menu">
                    <div class="container">
                        <nav>
                            <ul class="navigation">
                                <li><a class="active" href="#s1">Home</a></li>
                                <li><a href="#s2">74</a></li>
                                <li><a href="#s3">78</a></li>
                                <li><a href="#s4">About</a></li>
                            </ul>
                        </nav>
                    </div>
                </header>
                <section class="slide" id="s1"> <!-- presentazione-->
	                <h2>Home</h2>
                    <div id="pres">
                        <p>
                            Il sito è stato realizzato come progetto di <b>Codifica dei Testi anno 2019/2020</b> del professore Angelo Mario del Grosso
                            , corso di Laurea di Informatica Umanistica. <br />
                            Il progetto consiste nella codifica e nella presentazione di due cartoline appartenenti al 
                            <xsl:value-of select="//tei:fileDesc/tei:titleStmt/tei:respStmt/tei:name[@type='comune']" />
                            e depositate nel <xsl:value-of select="//tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:repository" />
                        </p>
                    </div>                   
                </section>
                <section class="slide" id="s2"> <!-- cartolina74-->
                    <h2 class="titolo"><xsl:value-of select="tei:teiCorpus/tei:TEI[@xml:id='cart74']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:title" /></h2>
                    <label class="buttons_uno">Fronte
                        <input type="radio" checked="checked" name="radio_uno" value="fronte" />
                        <span class="checkmark_uno"></span>
                    </label>
                    <label class="buttons_uno">Retro
                        <input type="radio" name="radio_uno" value="retro"/>
                        <span class="checkmark_uno"></span>
                    </label>

                    <div>
                        <xsl:element name="img"> <!-- immagine CARTOLINA 74 FRONTE-->
                            <xsl:attribute name="alt">cartolina fronte</xsl:attribute>
                            <xsl:attribute name="id">cartf1</xsl:attribute>
                            <xsl:attribute name="src"><xsl:value-of select="tei:teiCorpus/tei:TEI[@xml:id='cart74']/tei:facsimile/tei:surface[1]/tei:graphic/@url" /></xsl:attribute>
                        </xsl:element>
                        <div id="myModal1" class="modal">   <!-- immagine modale-->
                            <span class="close" >&#215;</span>
                            <xsl:element name="img">
                                <xsl:attribute name="alt">cartolina fronte</xsl:attribute>
                                <xsl:attribute name="id">imgf1</xsl:attribute>
                                <xsl:attribute name="class">modal-content</xsl:attribute>
                            </xsl:element>
                            <div id="note1">  <!-- blocco per la descrizione-->
                                <div id="testo_1" style="display:none;">
                                    <xsl:call-template name="descrivi_contenuto1FRONTE" />
                                </div>
                            </div> 
                        </div>
                        <div id="myModal2" class="modal">
                            <span class="close" >&#215;</span>
                            <xsl:element name="img">
                                <xsl:attribute name="alt">cartolina retro</xsl:attribute>
                                <xsl:attribute name="id">imgr1</xsl:attribute>
                                <xsl:attribute name="class">modal-content</xsl:attribute>
                            </xsl:element>
                            <div id="note2">  <!-- blocco per la descrizione-->
                                <div id="testo_2" style="display:none;">
                                    <xsl:call-template name="descrivi_contenuto1RETRO" />
                                </div>
                            </div>
                        </div>
                        <xsl:element name="img"> <!-- immagine CARTOLINA 74 RETRO-->
                            <xsl:attribute name="alt">cartolina retro</xsl:attribute>
                            <xsl:attribute name="id">cartr1</xsl:attribute>
                            <xsl:attribute name="src"><xsl:value-of select="tei:teiCorpus/tei:TEI[@xml:id='cart74']/tei:facsimile/tei:surface[last()]/tei:graphic/@url" /></xsl:attribute>
                        </xsl:element>

                        <xsl:apply-templates select="tei:teiCorpus/tei:TEI[@xml:id='cart74']"/>
                    </div>
                    
                </section>
                <section class="slide" id="s3"> <!-- cartolina78-->
                    <h2 class="titolo"><xsl:value-of select="tei:teiCorpus/tei:TEI[@xml:id='cart78']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:title" /></h2>
                    <label class="buttons_due">Fronte
                        <input type="radio" checked="checked" name="radio_due" value="fronte" />
                        <span class="checkmark_due"></span>
                    </label>
                    <label class="buttons_due">Retro
                        <input type="radio" name="radio_due" value="retro"/>
                        <span class="checkmark_due"></span>
                    </label>

                    <div>               
                        <xsl:element name="img"> <!-- immagine CARTOLINA 74 FRONTE-->
                            <xsl:attribute name="alt">cartolina fronte</xsl:attribute>
                            <xsl:attribute name="id">cartf2</xsl:attribute>
                            <xsl:attribute name="src"><xsl:value-of select="tei:teiCorpus/tei:TEI[@xml:id='cart78']/tei:facsimile/tei:surface[1]/tei:graphic/@url" /></xsl:attribute>
                        </xsl:element>
                        <div id="myModal3" class="modal">   <!-- immagine modale-->
                            <span class="close" >&#215;</span>
                            <xsl:element name="img">
                                <xsl:attribute name="alt">cartolina fronte</xsl:attribute>
                                <xsl:attribute name="id">imgf2</xsl:attribute>
                                <xsl:attribute name="class">modal-content</xsl:attribute>
                            </xsl:element>
                            <div id="note3">  <!-- blocco per la descrizione-->
                                <div id="testo_3" style="display:none;">
                                    <xsl:call-template name="descrivi_contenuto2FRONTE" />
                                </div>
                            </div> 
                        </div>
                        <div id="myModal4" class="modal">
                            <span class="close" >&#215;</span>
                            <xsl:element name="img">
                                <xsl:attribute name="alt">cartolina retro</xsl:attribute>
                                <xsl:attribute name="id">imgr2</xsl:attribute>
                                <xsl:attribute name="class">modal-content</xsl:attribute>
                            </xsl:element>
                            <div id="note4">  <!-- blocco per la descrizione-->
                                <div id="testo_4" style="display:none;">
                                    <xsl:call-template name="descrivi_contenuto2RETRO" />
                                </div>
                            </div>


                        </div>
                        
                        <xsl:element name="img"> <!-- immagine CARTOLINA 78 RETRO-->
                            <xsl:attribute name="alt">cartolina retro</xsl:attribute>
                            <xsl:attribute name="id">cartr2</xsl:attribute>
                            <xsl:attribute name="src"><xsl:value-of select="tei:teiCorpus/tei:TEI[@xml:id='cart78']/tei:facsimile/tei:surface[last()]/tei:graphic/@url" /></xsl:attribute>
                        </xsl:element>
                        
                        <xsl:apply-templates select="tei:teiCorpus/tei:TEI[@xml:id='cart78']"/>
                    </div>

                </section>
                <section class="slide" id="s4"> <!-- about(footer) -->
                    <xsl:call-template name="footer" />
                    <p id="end"> Professore Angelo Mario Del Grosso,<br/>Esame di Codifica di Testi</p>
                </section>
            </body>
        </html>

    </xsl:template>
    <xsl:template match="tei:teiCorpus/tei:TEI[@xml:id='cart74' or @xml:id='cart78']">
        <xsl:variable name="pheader" select="tei:teiHeader/tei:fileDesc/tei:sourceDesc" />
        <xsl:variable name="mittente" select="tei:teiHeader/tei:profileDesc/tei:correspDesc/tei:correspAction[@type='sent']"/>
        
        <div class="descrivi_fronte">
            
            <p>
                <b>Autore: </b><xsl:value-of select="$pheader/tei:bibl/tei:author" /><br/>
                <b>Titolo: </b><xsl:value-of select="$pheader/tei:bibl/tei:title" /><br/>
                <b>Tipo: </b><xsl:value-of select="$pheader/tei:msDesc/tei:msContents/tei:summary" /><br/>
                <b>Stato: </b><xsl:value-of select="$pheader/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:condition" /><br/>
                <b>Codice: </b><xsl:value-of select="$pheader/tei:msDesc/tei:msIdentifier/tei:idno" /><br/>
                
            </p>
        </div>
        <div class="descrivi_retro">      

            <p>
                <b>Mittente: </b>
                <xsl:choose>
                    <xsl:when test="$mittente/tei:persName" >
                        <xsl:value-of select="$mittente/tei:persName/tei:forename" /> &#160; <xsl:value-of select="$mittente/tei:persName/tei:surname" /> <!-- nome e cognome mittente, separato da spazio-->
                    </xsl:when>
                    <xsl:otherwise>
                        -<i>Sconosciuto</i>-
                    </xsl:otherwise>
                </xsl:choose><br/>
                <b>Destinatario: </b><xsl:value-of select="$mittente/../tei:correspAction[@type='received']/tei:persName" /><br/>
                <b>Luogo di Destinazione: </b>
                <xsl:choose>
                    <xsl:when test="$mittente/../tei:correspAction[@type='received']/tei:placeName/tei:choice">
                        <xsl:value-of select="//tei:corr" />
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="$mittente/../tei:correspAction[@type='received']/tei:placeName" />
                    </xsl:otherwise>
                </xsl:choose><br/>
                <b>Anno: </b><xsl:value-of select="$mittente/tei:date" /><br/>
            </p>
        </div>

    </xsl:template>
<!-- contenuto cartolina 74-->
<xsl:variable name="fronte0" select="tei:teiCorpus/tei:TEI[@xml:id='cart74']/tei:text[@type='cartolina']" />
<xsl:variable name="retro0" select="$fronte0/tei:body/tei:div[@type='retro']" />
    <xsl:template name="descrivi_contenuto1FRONTE">

        <div class="messaggio_fronte">
            <h3 class="titoletto">Fronte</h3>
            <b>Descrizione:</b>
            <p>
                <xsl:value-of select="$fronte0/tei:body/tei:div[@type='fronte']/tei:figure/tei:figDesc" />
                <br/>
                <xsl:value-of select="$fronte0/tei:body/tei:div[@type='fronte']/tei:figure/tei:head" />
            </p>
            <b>Testo:</b>
            <p>
                <xsl:choose>
                    <xsl:when test="$fronte0/tei:body/tei:div[@type='fronte']/tei:div" >
                        <xsl:value-of select="$fronte0/tei:body/tei:div[@type='fronte']/tei:div/tei:ab/tei:said" />
                        <br/>
                        <xsl:value-of select="$fronte0/tei:body/tei:div[@type='fronte']/tei:div/tei:ab/tei:said[position() = 2]" />
                    </xsl:when>
                    <xsl:otherwise>
                        -<i>Assente</i>-
                    </xsl:otherwise>
                </xsl:choose>
            </p>
        </div>
    </xsl:template>
    <xsl:template name="descrivi_contenuto1RETRO">
        <div class="messaggio_retro">
            <h3 class="titoletto">Retro</h3>
            <b>Messaggio:</b>
            <xsl:for-each select="$retro0/tei:div[@type='message']/*">
            <p>
                <xsl:value-of select="." />
            </p>
            </xsl:for-each>
            <b>Destinazione:</b>
            <p>
                <xsl:value-of select="$retro0/tei:div[@type='destination']/tei:p[last()]/tei:abbr" />. 
                <xsl:value-of select="$retro0/tei:div[@type='destination']/tei:p[last()]/tei:address/tei:addrLine[position() = 1]" />
            </p>
            <xsl:for-each select="$retro0/tei:div[@type='destination']/tei:p[last()]/tei:address/tei:addrLine[position() != 1]">
            <p>
                <xsl:value-of select="." />
            </p>
            </xsl:for-each>
        </div>
    </xsl:template>

<!-- contenuto cartolina 78-->


<xsl:variable name="fronte" select="tei:teiCorpus/tei:TEI[@xml:id='cart78']/tei:text[@type='cartolina']/tei:body/tei:div[@type='fronte']" />
<xsl:variable name="retro" select="$fronte/../tei:div[@type='retro']" />
<xsl:variable name="destinazione" select="$retro/tei:div[@type='destination']" />


    <xsl:template name="descrivi_contenuto2FRONTE">
        <div class="messaggio_fronte2">
            <h3 class="titoletto">Fronte</h3>
            <b>Descrizione:</b>
            <xsl:for-each select="$fronte/tei:figure/*">
            <p>
                <xsl:value-of select="." />
            </p>
            </xsl:for-each>
            <b>Testo:</b>
            <p>
                <xsl:choose>
                    <xsl:when test="$fronte/tei:div" >
                        <xsl:value-of select="." />
                    </xsl:when>
                    <xsl:otherwise>
                        -<i>Assente</i>-
                    </xsl:otherwise>
                </xsl:choose>
            </p>
        </div>
    </xsl:template>
        <xsl:template name="descrivi_contenuto2RETRO">
        <div class="messaggio_retro2">
            <h3 class="titoletto">Retro</h3>
            <b>Messaggio:</b>
            <p>
                <xsl:value-of select="$retro/tei:div[@type='message']/tei:p" />
            </p>
            
            <p>
                <xsl:value-of select="$retro/tei:div[@type='message']/tei:closer" />
            </p>
            
            <b>Destinazione:</b>
            <p>
                <xsl:for-each select="$destinazione/tei:p/tei:address/tei:addrLine" >
                    <xsl:value-of select="." /><br/>
                </xsl:for-each>
            </p>
        </div>
    </xsl:template>    

<!-- contenuto about(footer) -->
    <xsl:template name="footer">
    <xsl:variable name="main" select="tei:teiCorpus[@xml:id='main']/tei:teiHeader/tei:fileDesc"/>
        <h2>About - Progetto</h2>
        <div id="foo">
            <p >
                <b class="foo_l">Trascritto da:</b> &#160;<xsl:value-of select="$main/tei:titleStmt/tei:respStmt/tei:name[@xml:id='AL']" /><br/>
                <b class="foo_l">Appartenente a(Ente):</b> &#160;<xsl:value-of select="$main/tei:titleStmt/tei:respStmt/tei:name[@xml:id='SP']" /><br/>
                <b class="foo_l">Organizzazione:</b> &#160; <xsl:value-of select="$main/tei:publicationStmt/tei:publisher" />, <xsl:value-of select="$main/tei:publicationStmt/tei:pubPlace" /><br/>
            </p>
            <p >
                <b class="foo_r">Compilato da:</b> &#160;<xsl:value-of select="$main/tei:editionStmt/tei:respStmt/tei:name[@xml:id='TS']" /><br/>
                <b class="foo_r">Responsabile Scientifico:</b> &#160;<xsl:value-of select="$main/tei:editionStmt/tei:respStmt/tei:name[@xml:id='GP']" />, <xsl:value-of select="$main/tei:editionStmt/tei:respStmt/tei:name[@xml:id='ES']" /><br/>
                <b class="foo_r">Funzionario Responsabile:</b> &#160;<xsl:value-of select="$main/tei:editionStmt/tei:respStmt/tei:name[@xml:id='MR']" /><br/>
            </p>
        </div>
    </xsl:template>
</xsl:stylesheet>
