﻿# Module manifest for module 'MailPolicyExplainer'
# Generated by: Colin Cogle
# Generated on: 4/18/2018
@{

# Script module or binary module file associated with this manifest.
RootModule = 'src/MailPolicyExplainer.psm1'

# Version number of this module.
ModuleVersion = '1.4.0'

# Supported PSEditions
CompatiblePSEditions = @('Core', 'Desktop')

# ID used to uniquely identify this module
GUID = 'b3ec0108-05d3-43f1-a5ba-cc8f7f4cc8cc'

# Author of this module
Author = 'Colin Cogle'

# Copyright statement for this module
Copyright = '(c) 2018, 2020, 2023-2024 Colin Cogle. All rights reserved.'

# Description of the functionality provided by this module
Description = "Explains a domain's email DNS records, including MX, SPF, DKIM, DMARC, and more."

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '5.1'

# Things to export from this module, for best performance, do not use wildcards
# and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport   = ''
VariablesToExport = ''
FunctionsToExport = @(
	'Test-MailPolicy',
	'Test-MXRecord',
	'Test-IPVersions',
	'Test-DkimSelector',
	'Test-AdspRecord',
	'Test-DmarcRecord',
	'Test-BimiSelector',
	'Test-MtaStsPolicy',
	'Test-SmtpTlsReportingPolicy',
	'Test-SpfRecord',
	'Test-DaneRecord',
	'Invoke-GooglePublicDnsApi'
)
AliasesToExport = @(
	'Test-BimiRecord',
	'Test-DaneRecords',
	'Test-DkimRecord',
	'Test-DomainKeysRecord',
	'Test-DomainKeysSelector',
	'Test-MtaStsRecord',
	'Test-MXRecords',
	'Test-NullMXRecord',
	'Test-TlsaRecord',
	'Test-TlsaRecords'
)

# List of all files packaged with this module
FileList = @(
	'en-US/about_BIMI.help.txt',
	'en-US/about_DANERecords.help.txt',
	'en-US/about_DANERecordsAcronyms.help.txt',
	'en-US/about_DANERecordsUsage.help.txt',
	'en-US/about_DKIM.help.txt',
	'en-US/about_DKIMADSP.help.txt',
	'en-US/about_DKIMEd25519.help.txt',
	'en-US/about_DKIMRSAKeyUpdates.help.txt',
	'en-US/about_DMARC.help.txt',
	'en-US/about_IDNEmailAuthentication.help.txt',
	'en-US/about_MailPolicyExplainer.help.txt',
	'en-US/about_MTA-STS.help.txt',
	'en-US/about_MXRecords.help.txt',
	'en-US/about_NullMXRecords.help.txt',
	'en-US/about_SMTP.help.txt',
	'en-US/about_SMTPTLSReporting.help.txt',
	'en-US/about_SPF.help.txt',
	'src/MailPolicyExplainer.psm1',
	'AUTHORS.txt',
	'CHANGELOG.md',
	'CODE_OF_CONDUCT.md',
	'CONTRIBUTING.md',
	'INSTALL.md',
	'LICENSE.txt',
	'MailPolicyExplainer.psd1',
	'NEWS.md',
	'README.md',
	'SECURITY.md'
)

# Private data to pass to the module specified in RootModule/ModuleToProcess.
# This may also contain a PSData hashtable with additional module metadata used
# by PowerShell.
PrivateData = @{
	PSData = @{
		Prerelease = 'git'

		# Tags applied to this module.
		# These help with module discovery in online galleries.
		Tags = @(
			'email', 'mail', 'SPF', 'DKIM', 'DMARC', 'BIMI', 'DNSSEC', 'DANE',
			'MTA-STS', 'MX', 'TLSRPT', 'STARTTLS', 'domainkey', 'TLS', 'TLSA',
			'ADSP',  'DNS', 'policy', 'SenderID', 'tester', 'Reporting', 'Test',
			'Exchange', 'Office365', 'Google', 'Network', 'Cloud', 'security',
			'audit', 'IPv4', 'IPv6', 'SMTP', 'RSA', 'Ed25519',
			'Windows', 'MacOS', 'Linux', 'PSEdition_Core', 'PSEdition_Desktop'
		)

		LicenseUri = 'https://github.com/rhymeswithmogul/MailPolicyExplainer/blob/main/LICENSE.txt'
		ProjectUri = 'https://github.com/rhymeswithmogul/MailPolicyExplainer'
		IconUri = 'https://raw.githubusercontent.com/rhymeswithmogul/MailPolicyExplainer/main/icon/PSGallery.png'

		ReleaseNotes = '- Test-DkimRecord will emit the full DKIM TXT record to the verbose stream.
- DNSSEC-authenticated denial-of-existence is now shown by default.
- Added the `-DisableDnssecVerification` switch to most cmdlets to disable all DNSSEC checks (except for DANE).
- Removed the `ip4:` qualifier from parser output.
- Line endings for MTA-STS policy files are now parsed correctly on Windows PowerShell 5.1.'
	}
}

}
