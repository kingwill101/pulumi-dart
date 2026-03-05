/// The authentication type.
enum AuthType {
  valueSystemAssignedIdentity("systemAssignedIdentity"),
  valueUserAssignedIdentity("userAssignedIdentity"),
  valueServicePrincipalSecret("servicePrincipalSecret"),
  valueServicePrincipalCertificate("servicePrincipalCertificate"),
  valueSecret("secret"),
  valueAccessKey("accessKey"),
  valueUserAccount("userAccount"),
  valueEasyAuthMicrosoftEntraID("easyAuthMicrosoftEntraID");

  const AuthType(this.wireValue);
  final String wireValue;

  static AuthType fromValue(String value) {
    for (final item in AuthType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthType value: $value');
  }
}

