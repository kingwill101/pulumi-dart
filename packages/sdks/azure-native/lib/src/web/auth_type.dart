import 'package:pulumi/pulumi.dart' as pulumi;

/// Auth Type
enum AuthType implements pulumi.PulumiEnum<String> {
  valueAnonymous("Anonymous"),
  valueUserCredentials("UserCredentials"),
  valueSystemIdentity("SystemIdentity"),
  valueUserAssigned("UserAssigned");

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
