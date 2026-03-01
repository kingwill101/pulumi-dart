/// The auth type
enum CcpAuthType {
  valueBasic("Basic"),
  valueAPIKey("APIKey"),
  valueOAuth2("OAuth2"),
  valueAWS("AWS"),
  valueGCP("GCP"),
  valueSession("Session"),
  valueJwtToken("JwtToken"),
  valueGitHub("GitHub"),
  valueServiceBus("ServiceBus"),
  valueOracle("Oracle"),
  valueNone("None");

  const CcpAuthType(this.value);
  final String value;

  static CcpAuthType fromValue(String value) {
    for (final item in CcpAuthType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CcpAuthType value: $value');
  }
}

