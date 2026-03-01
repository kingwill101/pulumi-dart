/// predefined_role is the Kubernetes default role to use
enum RolePredefinedRoleGkehubV1alpha {
  unknown("UNKNOWN"),
  admin("ADMIN"),
  edit("EDIT"),
  view("VIEW"),
  anthosSupport("ANTHOS_SUPPORT");

  const RolePredefinedRoleGkehubV1alpha(this.value);
  final String value;

  static RolePredefinedRoleGkehubV1alpha fromValue(String value) {
    for (final item in RolePredefinedRoleGkehubV1alpha.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RolePredefinedRoleGkehubV1alpha value: $value');
  }
}

