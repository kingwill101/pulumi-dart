import 'package:pulumi/pulumi.dart' as pulumi;

/// Optional. Indicates how to configure authentication. If optInAllAuth, service linker configures authentication such as enabling identity on source resource and granting RBAC roles. If optOutAllAuth, opt out authentication setup. Default is optInAllAuth.
enum AuthMode implements pulumi.PulumiEnum<String> {
  valueOptInAllAuth("optInAllAuth"),
  valueOptOutAllAuth("optOutAllAuth");

  const AuthMode(this.wireValue);
  @override
  final String wireValue;

  static AuthMode fromValue(String value) {
    for (final item in AuthMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthMode value: $value');
  }
}
