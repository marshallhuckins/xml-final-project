<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" exclude-result-prefixes="xs"
    xmlns:xs="http://www.w3.org/2001/XMLSchema//www.w3.org/2001/XMLSchema"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Book Storage Locations</title>
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
                            <tr>
                                <th>Storage Type</th>
                                <th>Section</th>
                                <th>Shelf</th>
                                <th>Date into Inventory</th>
                                <th>Listed for Sale Date</th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="storage/info">
                                <tr>
                                    <td>
                                        <xsl:value-of select="item"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="type"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="section"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="shelf"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="intoInventory"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="listedDate"/>
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
