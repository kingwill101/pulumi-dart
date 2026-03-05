/// Optional. The selected Profile. If this is not set, then the default value is to allow the broadest set of clients and servers ("PROFILE_COMPATIBLE"). Setting this to more restrictive values may improve security, but may also prevent the TLS inspection proxy from connecting to some clients or servers. Note that Secure Web Proxy does not yet honor this field.
enum TlsInspectionPolicyTlsFeatureProfileNetworksecurityV1beta1 {
  profileUnspecified("PROFILE_UNSPECIFIED"),
  profileCompatible("PROFILE_COMPATIBLE"),
  profileModern("PROFILE_MODERN"),
  profileRestricted("PROFILE_RESTRICTED"),
  profileCustom("PROFILE_CUSTOM");

  const TlsInspectionPolicyTlsFeatureProfileNetworksecurityV1beta1(this.wireValue);
  final String wireValue;

  static TlsInspectionPolicyTlsFeatureProfileNetworksecurityV1beta1 fromValue(String value) {
    for (final item in TlsInspectionPolicyTlsFeatureProfileNetworksecurityV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TlsInspectionPolicyTlsFeatureProfileNetworksecurityV1beta1 value: $value');
  }
}

