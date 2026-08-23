// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Authorization payload.
class AuthorizationResponse {
  /// Gets or sets one-time OAuth code to exchange for refresh and access tokens.
  ///
  /// Only used during PUT/PATCH operations. The secret is cleared during GET.
  final pulumi.Input<String>? code;

  /// Creates a new [AuthorizationResponse].
  /// [code] Gets or sets one-time OAuth code to exchange for refresh and access tokens.
  const AuthorizationResponse({
    this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
    };
  }

  factory AuthorizationResponse.fromMap(Map<String, dynamic> map) {
    return AuthorizationResponse(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
