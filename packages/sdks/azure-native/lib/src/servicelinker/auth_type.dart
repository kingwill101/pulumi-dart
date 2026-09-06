import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication type.
enum AuthType implements pulumi.PulumiEnum<String> {
  valueSystemAssignedIdentity("systemAssignedIdentity"),
  valueUserAssignedIdentity("userAssignedIdentity"),
  valueServicePrincipalSecret("servicePrincipalSecret"),
  valueServicePrincipalCertificate("servicePrincipalCertificate"),
  valueSecret("secret"),
  valueAccessKey("accessKey"),
  valueUserAccount("userAccount"),
  valueEasyAuthMicrosoftEntraID("easyAuthMicrosoftEntraID");

  const AuthType(this.wireValue);
  @override
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
