<?xml version="1.0" encoding="UTF-8"?>
    <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
        <xsl:template match="/">
            <html>
                <head>
                    <title>Ibrahims Portfolio</title>
                    <link rel="stylesheet" type="text/css" href="http://localhost:8080/Ibrahim-7352396-project/style.css"/>
                    <script  src="https://use.fontawesome.com/releases/v5.15.0/js/all.js"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/typed.js/2.0.12/typed.min.js"></script>
                    <script src="http://localhost:8080/Ibrahim-7352396-project/script.js"></script>
                    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
                    <script src="http://localhost:8080/Ibrahim-7352396-project/script.js"></script>
                </head>
                <body>
                <nav class="Nbar">
                    <div class="Mwidth">
                        <div class="logo"><a href="#"> <span class="Titles"></span></a></div>
                        <ul class="navmenu">
                            <li><a href="index.html">Home</a></li>
                            <li><a href="AboutMe.html">About me</a></li>
                            <li><a href="Skills.html">Skills</a></li>
                            <li><a href="Hobbies.html">Hobbies</a></li>
                            <li><a href="CV.xml">CV</a></li>
                            <li><a href="ContactMe.html">Contact</a></li>
                        </ul>
                        <div class="Mbtn">
                            <i class="fas fa-ellipsis-v"></i>
                        </div>
                    </div>
                </nav>
                    <h2 style="color:#00eeff; padding-bottom: 20px;">My CV</h2>
                    <h3 style="color:#00eeff; padding-bottom: 5px;">Personal Details</h3>
                    <ul style="list-style-type:none; padding-bottom:5px">
                        <xsl:for-each select="CV/personal">
                            <li>Name: <xsl:value-of select="Name"/></li>
                            <li>About: <xsl:value-of select="about"/></li>
                        </xsl:for-each>
                    </ul>

                    <h3 style="color:#00eeff; padding-bottom: 5px;">Educational History</h3>
                    <ul style="list-style-type:none">
                        <xsl:for-each select="CV/Education">
                            <li style="padding-bottom:10px"><xsl:value-of select="history"/></li>
                            <li style="padding-bottom:10px">Primary Education: <xsl:value-of select="primary"/></li>
                            <li style="padding-bottom:10px">Secondary Education: <xsl:value-of select="secondary"/></li>
                            <li style="padding-bottom:10px">University Education: <xsl:value-of select="university"/></li>
                        </xsl:for-each>
                    </ul>

                    <h3 style="color:#00eeff; padding-bottom: 5px;">Contact Details</h3>
                    <ul style="list-style-type:none">
                        <xsl:for-each select="CV/Contact">
                            <li style="padding-bottom:10px">Email: <xsl:value-of select="Email"/></li>
                            <li style="padding-bottom:10px">Phone Number: <xsl:value-of select="Phone_Number"/></li>
                        </xsl:for-each>
                    </ul>
                    
                </body>
            </html>
        </xsl:template>
    </xsl:stylesheet>