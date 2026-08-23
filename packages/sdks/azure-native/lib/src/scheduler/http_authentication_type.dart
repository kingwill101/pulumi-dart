/// Gets or sets the HTTP authentication type.
enum HttpAuthenticationType {
  valueNotSpecified("NotSpecified"),
  valueClientCertificate("ClientCertificate"),
  valueActiveDirectoryOAuth("ActiveDirectoryOAuth"),
  valueBasic("Basic");

  const HttpAuthenticationType(this.wireValue);
  final String wireValue;

  static HttpAuthenticationType fromValue(String value) {
    for (final item in HttpAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HttpAuthenticationType value: $value');
  }
}
