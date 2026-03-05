/// Optional. The selected Profile. If this is not set, then the default value is to allow the broadest set of clients and servers ("PROFILE_COMPATIBLE"). Setting this to more restrictive values may improve security, but may also prevent the TLS inspection proxy from connecting to some clients or servers. Note that Secure Web Proxy does not yet honor this field.
enum TlsInspectionPolicyTlsFeatureProfile {
  profileUnspecified("PROFILE_UNSPECIFIED"),
  profileCompatible("PROFILE_COMPATIBLE"),
  profileModern("PROFILE_MODERN"),
  profileRestricted("PROFILE_RESTRICTED"),
  profileCustom("PROFILE_CUSTOM");

  const TlsInspectionPolicyTlsFeatureProfile(this.wireValue);
  final String wireValue;

  static TlsInspectionPolicyTlsFeatureProfile fromValue(String value) {
    for (final item in TlsInspectionPolicyTlsFeatureProfile.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TlsInspectionPolicyTlsFeatureProfile value: $value');
  }
}

