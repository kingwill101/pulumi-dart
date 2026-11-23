// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthProviderAuthProviderTypeParamsXaaAuthProviderClientSecretAuth {
  /// Required. The client identifier.
  final pulumi.Input<String> clientId;
  /// Required. Input only. The client secret.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String> clientSecret;

  /// Creates a new [AuthProviderAuthProviderTypeParamsXaaAuthProviderClientSecretAuth].
  /// [clientId] Required. The client identifier.
  /// [clientSecret] Required. Input only. The client secret.
  const AuthProviderAuthProviderTypeParamsXaaAuthProviderClientSecretAuth({
    required this.clientId,
    required this.clientSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': clientSecret,
    };
  }

  factory AuthProviderAuthProviderTypeParamsXaaAuthProviderClientSecretAuth.fromMap(Map<String, dynamic> map) {
    return AuthProviderAuthProviderTypeParamsXaaAuthProviderClientSecretAuth(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: pulumi.Input.fromValue(map['clientSecret'] as String),
    );
  }
}
