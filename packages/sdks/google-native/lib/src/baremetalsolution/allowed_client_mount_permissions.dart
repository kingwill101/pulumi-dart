/// Mount permissions.
enum AllowedClientMountPermissions {
  mountPermissionsUnspecified("MOUNT_PERMISSIONS_UNSPECIFIED"),
  read("READ"),
  readWrite("READ_WRITE");

  const AllowedClientMountPermissions(this.wireValue);
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

