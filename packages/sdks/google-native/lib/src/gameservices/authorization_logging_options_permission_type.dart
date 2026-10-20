import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the permission that was checked.
enum AuthorizationLoggingOptionsPermissionType implements pulumi.PulumiEnum<String> {
  permissionTypeUnspecified("PERMISSION_TYPE_UNSPECIFIED"),
  adminRead("ADMIN_READ"),
  adminWrite("ADMIN_WRITE"),
  dataRead("DATA_READ"),
  dataWrite("DATA_WRITE");

  const AuthorizationLoggingOptionsPermissionType(this.wireValue);
  @override
  final String wireValue;

  static AuthorizationLoggingOptionsPermissionType fromValue(String value) {
    for (final item in AuthorizationLoggingOptionsPermissionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthorizationLoggingOptionsPermissionType value: $value');
  }
}
