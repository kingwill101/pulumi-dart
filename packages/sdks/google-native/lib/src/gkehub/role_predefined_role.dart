/// predefined_role is the Kubernetes default role to use
enum RolePredefinedRole {
  unknown("UNKNOWN"),
  admin("ADMIN"),
  edit("EDIT"),
  view("VIEW"),
  anthosSupport("ANTHOS_SUPPORT");

  const RolePredefinedRole(this.wireValue);
  final String wireValue;

  static RolePredefinedRole fromValue(String value) {
    for (final item in RolePredefinedRole.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RolePredefinedRole value: $value');
  }
}

