import 'package:pulumi/pulumi.dart' as pulumi;

enum NodeGroupRolesItem implements pulumi.PulumiEnum<String> {
  roleUnspecified("ROLE_UNSPECIFIED"),
  driver("DRIVER");

  const NodeGroupRolesItem(this.wireValue);
  @override
  final String wireValue;

  static NodeGroupRolesItem fromValue(String value) {
    for (final item in NodeGroupRolesItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeGroupRolesItem value: $value');
  }
}
