rule PK_CA_z0n51 : Credit_Agricole
{
    meta:
        description = "Phishing Kit impersonating Credit Agricole"
        licence = "GPL-3.0"
        author = "Thomas 'tAd' Damonneville"
        reference = ""
        date = "2020-12-01"
        comment = "Phishing Kit - Credit Agricole - 'Author: z0n51'"

    strings:
        $zip_file = { 50 4b 03 04 }
        $spec_dir = "PK_CA_z0ne5151"
        $spec_file1 = "_media-queries.scss"
        $spec_file2 = "resulttt987.txt"
        $spec_file3 = "authfort.php"
        $spec_file4 = "securepass.php"

    condition:
        uint32(0) == 0x04034b50 and
        $zip_file and
        $spec_dir and
        // check for file
        all of ($spec_file*)
}
