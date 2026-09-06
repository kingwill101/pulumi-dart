import 'package:pulumi/pulumi.dart' as pulumi;

/// The identity type
enum ManagedIdentityType implements pulumi.PulumiEnum<String> {
  valueNone("None"),
  valueUserAssigned("UserAssigned"),
  valueSystemAssigned("SystemAssigned"),
  valueSystemAssignedUserAssigned("SystemAssigned,UserAssigned");

  const ManagedIdentityType(this.wireValue);
  @override
  final String wireValue;

  static ManagedIdentityType fromValue(String value) {
    for (final item in ManagedIdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedIdentityType value: $value');
  }
}
