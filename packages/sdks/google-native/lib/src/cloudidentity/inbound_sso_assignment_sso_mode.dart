/// Inbound SSO behavior.
enum InboundSsoAssignmentSsoMode {
  ssoModeUnspecified("SSO_MODE_UNSPECIFIED"),
  ssoOff("SSO_OFF"),
  samlSso("SAML_SSO"),
  domainWideSamlIfEnabled("DOMAIN_WIDE_SAML_IF_ENABLED");

  const InboundSsoAssignmentSsoMode(this.wireValue);
  final String wireValue;

  static InboundSsoAssignmentSsoMode fromValue(String value) {
    for (final item in InboundSsoAssignmentSsoMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InboundSsoAssignmentSsoMode value: $value');
  }
}
