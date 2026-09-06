import 'package:pulumi/pulumi.dart' as pulumi;

/// The type.
enum IdentityManagementTypes implements pulumi.PulumiEnum<String> {
  notSpecified("NotSpecified"),
  systemAssigned("SystemAssigned"),
  userAssigned("UserAssigned"),
  actor("Actor"),
  delegatedResourceIdentity("DelegatedResourceIdentity");

  const IdentityManagementTypes(this.wireValue);
  @override
  final String wireValue;

  static IdentityManagementTypes fromValue(String value) {
    for (final item in IdentityManagementTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IdentityManagementTypes value: $value');
  }
}
