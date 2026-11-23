// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthProviderAuthProviderTypeParamsXaaAuthProviderCustomIssuer {
  /// Optional. The issuer identifier of the target Authorization Server.
  final pulumi.Input<String?>? issuer;
  /// Required. The token endpoint of the target OAuth authorization server to retrieve resource tokens.
  final pulumi.Input<String> tokenUrl;

  /// Creates a new [AuthProviderAuthProviderTypeParamsXaaAuthProviderCustomIssuer].
  /// [issuer] Optional. The issuer identifier of the target Authorization Server.
  /// [tokenUrl] Required. The token endpoint of the target OAuth authorization server to retrieve resource tokens.
  const AuthProviderAuthProviderTypeParamsXaaAuthProviderCustomIssuer({
    this.issuer,
    required this.tokenUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issuer': ?issuer,
      'tokenUrl': tokenUrl,
    };
  }

  factory AuthProviderAuthProviderTypeParamsXaaAuthProviderCustomIssuer.fromMap(Map<String, dynamic> map) {
    return AuthProviderAuthProviderTypeParamsXaaAuthProviderCustomIssuer(
      issuer: (() { final guardedValue = map['issuer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenUrl: pulumi.Input.fromValue(map['tokenUrl'] as String),
    );
  }
}
