// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Authorization-related information used by Cloud Audit Logging.
class AuthorizationLoggingOptionsResponse {
  /// The type of the permission that was checked.
  final pulumi.Input<String> permissionType;

  /// Creates a new [AuthorizationLoggingOptionsResponse].
  /// [permissionType] The type of the permission that was checked.
  const AuthorizationLoggingOptionsResponse({
    required this.permissionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'permissionType': permissionType,
    };
  }

  factory AuthorizationLoggingOptionsResponse.fromMap(Map<String, dynamic> map) {
    return AuthorizationLoggingOptionsResponse(
      permissionType: pulumi.Input.fromValue(map['permissionType'] as String),
    );
  }
}

