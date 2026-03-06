// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_logging_options_permission_type_compute_beta.dart';

/// This is deprecated and has no effect. Do not use.
class AuthorizationLoggingOptionsComputeBeta {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<AuthorizationLoggingOptionsPermissionTypeComputeBeta>? permissionType;

  /// Creates a new [AuthorizationLoggingOptionsComputeBeta].
  /// [permissionType] This is deprecated and has no effect. Do not use.
  const AuthorizationLoggingOptionsComputeBeta({
    this.permissionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissionType': ?pulumi.Input.mapOptionalInputValue<AuthorizationLoggingOptionsPermissionTypeComputeBeta, String>(permissionType, (value) => value.wireValue),
    };
  }

  factory AuthorizationLoggingOptionsComputeBeta.fromMap(Map<String, dynamic> map) {
    return AuthorizationLoggingOptionsComputeBeta(
      permissionType: (() { final guardedValue = map['permissionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthorizationLoggingOptionsPermissionTypeComputeBeta.fromValue(guardedValue as String)); })(),
    );
  }
}

