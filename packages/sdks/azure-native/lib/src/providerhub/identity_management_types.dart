/// The type.
enum IdentityManagementTypes {
  notSpecified("NotSpecified"),
  systemAssigned("SystemAssigned"),
  userAssigned("UserAssigned"),
  actor("Actor"),
  delegatedResourceIdentity("DelegatedResourceIdentity");

  const IdentityManagementTypes(this.wireValue);
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
