<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" exclude-result-prefixes="xs"
    xmlns:xs="http://www.w3.org/2001/XMLSchema//www.w3.org/2001/XMLSchema"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Book Vendors</title>
                <link href="style.css" rel="stylesheet" type="text/css"/>
            </head>
            <body>
                <nav id="menu">
                    <input type="checkbox" id="responsive-menu" onclick="updatemenu()">
                        <label/>
                        <ul>
                            <li>
                                <a href="inventory.xml">Home</a>
                            </li>
                            <li>
                                <a href="storage.xml">Storage</a>
                            </li>
                            <li>
                                <a href="needsPurchased.xml">Needs Purchased</a>
                            </li>
                            <li>
                                <a href="vendor.xml">Vendors</a>
                            </li>
                            <li>
                                <a href="mailto:mjhuckins@mail.mccneb.edu">Contact Us</a>
                            </li>
                        </ul>
                    </input>
                </nav>
                <div class="table-wrapper">
                    <table class="fl-table">
                        <thead>
                            <th>Company</th>
                            <th>Address</th>
                            <th>Website</th>
                            <th>Phone Number</th>
                            <th>Vendor ID</th>
                        </thead>
                        <tbody>
                        <xsl:for-each select="supplier/vendor">                            
                                <tr>
                                    <td>
                                        <xsl:value-of select="company"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="address"/>
                                    </td>
                                    <td>
                                        <a XML-LINK="LINK" HREF="http://www.{web}.com/">
                                            <xsl:value-of select="web"/>
                                        </a>
                                    </td>
                                    <td>
                                        <xsl:value-of select="phone"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="venId"/>
                                    </td>
                                </tr>
                        </xsl:for-each>
                        </tbody>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
