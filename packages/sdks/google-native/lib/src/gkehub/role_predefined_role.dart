import 'package:pulumi/pulumi.dart' as pulumi;

/// predefined_role is the Kubernetes default role to use
enum RolePredefinedRole implements pulumi.PulumiEnum<String> {
  unknown("UNKNOWN"),
  admin("ADMIN"),
  edit("EDIT"),
  view("VIEW"),
  anthosSupport("ANTHOS_SUPPORT");

  const RolePredefinedRole(this.wireValue);
  @override
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
