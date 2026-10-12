// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolOpenApiSpecAuthenticationOauthConfig {
  /// The client ID from the OAuth provider.
  final pulumi.Input<String> clientId;
  /// Optional. The client secret from the OAuth provider. If the `secretVersionForClientSecret` field is set, this field will be ignored.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? clientSecret;
  /// OAuth grant types.
  /// Possible values are: `CLIENT_CREDENTIAL`.
  final pulumi.Input<String> oauthGrantType;
  /// Optional. The OAuth scopes to grant.
  final pulumi.Input<List<String>?>? scopes;
  /// Optional. The name of the SecretManager secret version resource storing the client secret.
  /// If this field is set, the `clientSecret` field will be ignored.
  /// Format: `projects/{project}/secrets/{secret}/versions/{version}`
  final pulumi.Input<String?>? secretVersionForClientSecret;
  /// The token endpoint in the OAuth provider to exchange for an access token.
  final pulumi.Input<String> tokenEndpoint;

  /// Creates a new [ToolOpenApiSpecAuthenticationOauthConfig].
  /// [clientId] The client ID from the OAuth provider.
  /// [clientSecret] Optional. The client secret from the OAuth provider. If the `secretVersionForClientSecret` field is set, this field will be ignored.
  /// [oauthGrantType] OAuth grant types.
  /// [scopes] Optional. The OAuth scopes to grant.
  /// [secretVersionForClientSecret] Optional. The name of the SecretManager secret version resource storing the client secret.
  /// [tokenEndpoint] The token endpoint in the OAuth provider to exchange for an access token.
  const ToolOpenApiSpecAuthenticationOauthConfig({
    required this.clientId,
    this.clientSecret,
    required this.oauthGrantType,
    this.scopes,
    this.secretVersionForClientSecret,
    required this.tokenEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': ?clientSecret,
      'oauthGrantType': oauthGrantType,
      'scopes': ?scopes,
      'secretVersionForClientSecret': ?secretVersionForClientSecret,
      'tokenEndpoint': tokenEndpoint,
    };
  }

  factory ToolOpenApiSpecAuthenticationOauthConfig.fromMap(Map<String, dynamic> map) {
    return ToolOpenApiSpecAuthenticationOauthConfig(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauthGrantType: pulumi.Input.fromValue(map['oauthGrantType'] as String),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      secretVersionForClientSecret: (() { final guardedValue = map['secretVersionForClientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenEndpoint: pulumi.Input.fromValue(map['tokenEndpoint'] as String),
    );
  }
}
