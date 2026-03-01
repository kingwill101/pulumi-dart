/// This is deprecated and has no effect. Do not use.
enum AuthorizationLoggingOptionsPermissionTypeComputeBeta {
  adminRead("ADMIN_READ"),
  adminWrite("ADMIN_WRITE"),
  dataRead("DATA_READ"),
  dataWrite("DATA_WRITE"),
  permissionTypeUnspecified("PERMISSION_TYPE_UNSPECIFIED");

  const AuthorizationLoggingOptionsPermissionTypeComputeBeta(this.value);
  final String value;

  static AuthorizationLoggingOptionsPermissionTypeComputeBeta fromValue(String value) {
    for (final item in AuthorizationLoggingOptionsPermissionTypeComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AuthorizationLoggingOptionsPermissionTypeComputeBeta value: $value');
  }
}

