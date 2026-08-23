// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_logging_options_permission_type_gameservices_v1beta.dart';

/// Authorization-related information used by Cloud Audit Logging.
class AuthorizationLoggingOptionsGameservicesV1beta {
  /// The type of the permission that was checked.
  final pulumi.Input<AuthorizationLoggingOptionsPermissionTypeGameservicesV1beta>? permissionType;

  /// Creates a new [AuthorizationLoggingOptionsGameservicesV1beta].
  /// [permissionType] The type of the permission that was checked.
  const AuthorizationLoggingOptionsGameservicesV1beta({
    this.permissionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissionType': ?pulumi.Input.mapOptionalInputValue<AuthorizationLoggingOptionsPermissionTypeGameservicesV1beta, String>(permissionType, (value) => value.wireValue),
    };
  }

  factory AuthorizationLoggingOptionsGameservicesV1beta.fromMap(Map<String, dynamic> map) {
    return AuthorizationLoggingOptionsGameservicesV1beta(
      permissionType: (() { final guardedValue = map['permissionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthorizationLoggingOptionsPermissionTypeGameservicesV1beta.fromValue(guardedValue as String)); })(),
    );
  }
}
