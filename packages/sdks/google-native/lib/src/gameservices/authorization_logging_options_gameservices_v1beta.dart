// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_logging_options_permission_type_gameservices_v1beta.dart';

/// Authorization-related information used by Cloud Audit Logging.
class AuthorizationLoggingOptionsGameservicesV1beta {
  /// The type of the permission that was checked.
  final pulumi.Input<AuthorizationLoggingOptionsPermissionTypeGameservicesV1beta>? permissionType;

  /// Creates a new [AuthorizationLoggingOptionsGameservicesV1beta].
  /// [permissionType] The type of the permission that was checked.
  AuthorizationLoggingOptionsGameservicesV1beta({
    this.permissionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissionType': ?pulumi.Input.mapOptionalInputValue<AuthorizationLoggingOptionsPermissionTypeGameservicesV1beta, String>(permissionType, (value) => value.value),
    };
  }

  factory AuthorizationLoggingOptionsGameservicesV1beta.fromMap(Map<String, dynamic> map) {
    return AuthorizationLoggingOptionsGameservicesV1beta(
      permissionType: map['permissionType'] == null ? null : (AuthorizationLoggingOptionsPermissionTypeGameservicesV1beta.fromValue(map['permissionType'] as String)).input(),
    );
  }
}

