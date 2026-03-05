/// The alerts' productName on which the cases will be generated
enum MicrosoftSecurityProductName {
  valueMicrosoftCloudAppSecurity("Microsoft Cloud App Security"),
  valueAzureSecurityCenter("Azure Security Center"),
  valueAzureAdvancedThreatProtection("Azure Advanced Threat Protection"),
  valueAzureActiveDirectoryIdentityProtection("Azure Active Directory Identity Protection"),
  valueAzureSecurityCenterForIoT("Azure Security Center for IoT");

  const MicrosoftSecurityProductName(this.wireValue);
  final String wireValue;

  static MicrosoftSecurityProductName fromValue(String value) {
    for (final item in MicrosoftSecurityProductName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MicrosoftSecurityProductName value: $value');
  }
}

