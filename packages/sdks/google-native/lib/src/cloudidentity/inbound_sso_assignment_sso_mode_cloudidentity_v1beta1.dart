/// Inbound SSO behavior.
enum InboundSsoAssignmentSsoModeCloudidentityV1beta1 {
  ssoModeUnspecified("SSO_MODE_UNSPECIFIED"),
  ssoOff("SSO_OFF"),
  samlSso("SAML_SSO"),
  domainWideSamlIfEnabled("DOMAIN_WIDE_SAML_IF_ENABLED");

  const InboundSsoAssignmentSsoModeCloudidentityV1beta1(this.wireValue);
  final String wireValue;

  static InboundSsoAssignmentSsoModeCloudidentityV1beta1 fromValue(String value) {
    for (final item in InboundSsoAssignmentSsoModeCloudidentityV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InboundSsoAssignmentSsoModeCloudidentityV1beta1 value: $value');
  }
}

