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

  const CcpAuthType(this.wireValue);
  final String wireValue;

  static CcpAuthType fromValue(String value) {
    for (final item in CcpAuthType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CcpAuthType value: $value');
  }
}

