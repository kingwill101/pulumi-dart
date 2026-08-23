// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_logging_options_permission_type_compute_v1.dart';

/// This is deprecated and has no effect. Do not use.
class AuthorizationLoggingOptionsComputeV1 {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<AuthorizationLoggingOptionsPermissionTypeComputeV1>? permissionType;

  /// Creates a new [AuthorizationLoggingOptionsComputeV1].
  /// [permissionType] This is deprecated and has no effect. Do not use.
  const AuthorizationLoggingOptionsComputeV1({
    this.permissionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissionType': ?pulumi.Input.mapOptionalInputValue<AuthorizationLoggingOptionsPermissionTypeComputeV1, String>(permissionType, (value) => value.wireValue),
    };
  }

  factory AuthorizationLoggingOptionsComputeV1.fromMap(Map<String, dynamic> map) {
    return AuthorizationLoggingOptionsComputeV1(
      permissionType: (() { final guardedValue = map['permissionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthorizationLoggingOptionsPermissionTypeComputeV1.fromValue(guardedValue as String)); })(),
    );
  }
}
