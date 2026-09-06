import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of identity used for the resource. The type 'SystemAssigned, UserAssigned' includes both an identity created by the system and a set of user assigned identities. The type 'None' will remove all identities from the service.
enum IdentityType implements pulumi.PulumiEnum<String> {
  none("None"),
  systemAssigned("SystemAssigned"),
  userAssigned("UserAssigned"),
  systemAssignedUserAssigned("SystemAssigned, UserAssigned");

  const IdentityType(this.wireValue);
  @override
  final String wireValue;

  static IdentityType fromValue(String value) {
    for (final item in IdentityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IdentityType value: $value');
  }
}
