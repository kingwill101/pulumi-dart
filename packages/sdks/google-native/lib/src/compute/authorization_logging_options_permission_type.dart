/// This is deprecated and has no effect. Do not use.
enum AuthorizationLoggingOptionsPermissionType {
  adminRead("ADMIN_READ"),
  adminWrite("ADMIN_WRITE"),
  dataRead("DATA_READ"),
  dataWrite("DATA_WRITE"),
  permissionTypeUnspecified("PERMISSION_TYPE_UNSPECIFIED");

  const AuthorizationLoggingOptionsPermissionType(this.wireValue);
  final String wireValue;

  static AuthorizationLoggingOptionsPermissionType fromValue(String value) {
    for (final item in AuthorizationLoggingOptionsPermissionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown AuthorizationLoggingOptionsPermissionType value: $value',
    );
  }
}
