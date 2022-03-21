<?xml version="1.0" encoding="UTF-8"?>
    <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
        <xsl:template match="/">
            <html>
                <head>
                    <title>Ibrahims Portfolio</title>
                    <link rel="stylesheet" type="text/css" href="http://localhost:8080/CSIT128Project/style.css"/>
                    <script  src="https://use.fontawesome.com/releases/v5.15.0/js/all.js"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/typed.js/2.0.12/typed.min.js"></script>
                    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
                    <script src="http://localhost:8080/CSIT128Project/script.js"></script>
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
                            <li><a href="Game.html">Game</a></li>
                            <li><a href="ContactMe.html">Contact</a></li>
                        </ul>
                        <div class="Mbtn">
                            <i class="fas fa-ellipsis-v"></i>
                        </div>
                    </div>
                </nav>
                    <section class="CV">
                        <div class="Mwidth">
                            <h2 class="title">CV</h2>
                            <div class="AContent">
                                <div class="Cleft" style="padding-right:30px">

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

                                    <button type="button" onclick="loadDoc();" style="margin-bottom:20px">Get the Rest of the CV</button>
                                    <div id="rest_of_CV"></div>
                                </div>   
                                <div class="CRight">
                                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14531.589375412199!2d54.589823287889!3d24.419633686402474!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3e5e46165ae34ba1%3A0xfee0e7a8ce549e93!2sNMC%20ProVita%20International%20Medical%20Center!5e0!3m2!1sen!2sae!4v1646741772263!5m2!1sen!2sae" width="100%" height="500px" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                                </div>                 
                            </div>
                        </div>
                    </section>
                </body>
            </html>
        </xsl:template>
    </xsl:stylesheet>