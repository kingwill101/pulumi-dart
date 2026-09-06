import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of managed identity that is being selected.
enum ManagedServiceIdentitySelectorType implements pulumi.PulumiEnum<String> {
  valueSystemAssignedIdentity("SystemAssignedIdentity"),
  valueUserAssignedIdentity("UserAssignedIdentity");

  const ManagedServiceIdentitySelectorType(this.wireValue);
  @override
  final String wireValue;

  static ManagedServiceIdentitySelectorType fromValue(String value) {
    for (final item in ManagedServiceIdentitySelectorType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedServiceIdentitySelectorType value: $value');
  }
}
