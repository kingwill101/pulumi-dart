// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_logging_options_permission_type.dart';

/// This is deprecated and has no effect. Do not use.
class AuthorizationLoggingOptions {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<AuthorizationLoggingOptionsPermissionType>? permissionType;

  /// Creates a new [AuthorizationLoggingOptions].
  /// [permissionType] This is deprecated and has no effect. Do not use.
  const AuthorizationLoggingOptions({
    this.permissionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissionType': ?pulumi.Input.mapOptionalInputValue<AuthorizationLoggingOptionsPermissionType, String>(permissionType, (value) => value.wireValue),
    };
  }

  factory AuthorizationLoggingOptions.fromMap(Map<String, dynamic> map) {
    return AuthorizationLoggingOptions(
      permissionType: (() { final guardedValue = map['permissionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthorizationLoggingOptionsPermissionType.fromValue(guardedValue as String)); })(),
    );
  }
}

