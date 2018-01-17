﻿@{
    AllNodes = @(
        @{
            NodeName                    = 'localhost'
            Role                        = 'WebServer'
            PsDscAllowPlainTextPassword = $true

            UrlRewritePackagePath       = 'C:\PSPG\Installers\rewrite_amd64.msi'
            SqlExpressPackagePath       = 'C:\PSPG\Installers\SqlLocalDB_x64.msi'

            GalleryAdminCredFile        = 'C:\PSPG\Configuration\GalleryAdminCredFile.clixml'
            GallerySourcePath           = 'C:\Program Files\WindowsPowerShell\Modules\PSGallery\GalleryContent\'

            WebsiteName                 = 'smigrate-psgallery'
            WebsitePath                 = 'C:\smigrate-psgallery'
            AppPoolName                 = 'smigratepsgallery'
            WebsitePort                 = 80

            SqlInstanceName             = 'PSGallery'
            SqlDatabaseName             = 'smigrate-psgallery'
        }
    )
}
