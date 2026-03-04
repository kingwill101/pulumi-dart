// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_logging_options_permission_type.dart';

/// Authorization-related information used by Cloud Audit Logging.
class AuthorizationLoggingOptions {
  /// The type of the permission that was checked.
  final pulumi.Input<AuthorizationLoggingOptionsPermissionType>? permissionType;

  /// Creates a new [AuthorizationLoggingOptions].
  /// [permissionType] The type of the permission that was checked.
  AuthorizationLoggingOptions({this.permissionType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissionType':
          ?pulumi.Input.mapOptionalInputValue<
            AuthorizationLoggingOptionsPermissionType,
            String
          >(permissionType, (value) => value.wireValue),
    };
  }

  factory AuthorizationLoggingOptions.fromMap(Map<String, dynamic> map) {
    return AuthorizationLoggingOptions(
      permissionType: (() {
        final guardedValue = map['permissionType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AuthorizationLoggingOptionsPermissionType.fromValue(
            guardedValue as String,
          ),
        );
      })(),
    );
  }
}
