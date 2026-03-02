// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_logging_options_permission_type.dart';

/// This is deprecated and has no effect. Do not use.
class AuthorizationLoggingOptions {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<AuthorizationLoggingOptionsPermissionType>? permissionType;

  /// Creates a new [AuthorizationLoggingOptions].
  /// [permissionType] This is deprecated and has no effect. Do not use.
  AuthorizationLoggingOptions({
    this.permissionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissionType': ?pulumi.Input.mapOptionalInputValue<AuthorizationLoggingOptionsPermissionType, String>(permissionType, (value) => value.value),
    };
  }

  factory AuthorizationLoggingOptions.fromMap(Map<String, dynamic> map) {
    return AuthorizationLoggingOptions(
      permissionType: map['permissionType'] == null ? null : (AuthorizationLoggingOptionsPermissionType.fromValue(map['permissionType'] as String)).input(),
    );
  }
}

