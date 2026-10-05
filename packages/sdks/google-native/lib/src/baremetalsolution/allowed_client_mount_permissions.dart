import 'package:pulumi/pulumi.dart' as pulumi;

/// Mount permissions.
enum AllowedClientMountPermissions implements pulumi.PulumiEnum<String> {
  mountPermissionsUnspecified("MOUNT_PERMISSIONS_UNSPECIFIED"),
  read("READ"),
  readWrite("READ_WRITE");

  const AllowedClientMountPermissions(this.wireValue);
  @override
  final String wireValue;

  static AllowedClientMountPermissions fromValue(String value) {
    for (final item in AllowedClientMountPermissions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AllowedClientMountPermissions value: $value');
  }
}
