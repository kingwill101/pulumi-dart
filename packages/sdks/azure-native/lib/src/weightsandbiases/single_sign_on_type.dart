import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of Single Sign-On mechanism being used
enum SingleSignOnType implements pulumi.PulumiEnum<String> {
  saml("Saml"),
  openId("OpenId");

  const SingleSignOnType(this.wireValue);
  @override
  final String wireValue;

  static SingleSignOnType fromValue(String value) {
    for (final item in SingleSignOnType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SingleSignOnType value: $value');
  }
}
