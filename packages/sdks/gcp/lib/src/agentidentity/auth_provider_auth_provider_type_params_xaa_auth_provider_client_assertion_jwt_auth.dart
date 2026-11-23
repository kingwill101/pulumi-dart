// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthProviderAuthProviderTypeParamsXaaAuthProviderClientAssertionJwtAuth {
  /// Required. The client identifier.
  final pulumi.Input<String> clientId;

  /// Creates a new [AuthProviderAuthProviderTypeParamsXaaAuthProviderClientAssertionJwtAuth].
  /// [clientId] Required. The client identifier.
  const AuthProviderAuthProviderTypeParamsXaaAuthProviderClientAssertionJwtAuth({
    required this.clientId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
    };
  }

  factory AuthProviderAuthProviderTypeParamsXaaAuthProviderClientAssertionJwtAuth.fromMap(Map<String, dynamic> map) {
    return AuthProviderAuthProviderTypeParamsXaaAuthProviderClientAssertionJwtAuth(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
    );
  }
}
