import 'package:pulumi/pulumi.dart' as pulumi;

/// The identity type
enum DatabaseIdentityType implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueUserAssigned("UserAssigned");

  const DatabaseIdentityType(this.wireValue);
  @override
  final String wireValue;

  static DatabaseIdentityType fromValue(String value) {
    for (final item in DatabaseIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseIdentityType value: $value');
  }
}
