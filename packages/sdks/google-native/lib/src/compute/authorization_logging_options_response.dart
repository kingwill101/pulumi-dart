// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This is deprecated and has no effect. Do not use.
class AuthorizationLoggingOptionsResponse {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String> permissionType;

  /// Creates a new [AuthorizationLoggingOptionsResponse].
  /// [permissionType] This is deprecated and has no effect. Do not use.
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
