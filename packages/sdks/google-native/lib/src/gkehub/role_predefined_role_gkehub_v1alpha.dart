import 'package:pulumi/pulumi.dart' as pulumi;

/// predefined_role is the Kubernetes default role to use
enum RolePredefinedRoleGkehubV1alpha implements pulumi.PulumiEnum<String> {
  unknown("UNKNOWN"),
  admin("ADMIN"),
  edit("EDIT"),
  view("VIEW"),
  anthosSupport("ANTHOS_SUPPORT");

  const RolePredefinedRoleGkehubV1alpha(this.wireValue);
  @override
  final String wireValue;

  static RolePredefinedRoleGkehubV1alpha fromValue(String value) {
    for (final item in RolePredefinedRoleGkehubV1alpha.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RolePredefinedRoleGkehubV1alpha value: $value');
  }
}
