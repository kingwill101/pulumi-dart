// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ToolsetOpenApiToolsetApiAuthenticationOauthConfig {
  /// The client ID from the OAuth provider.
  final pulumi.Input<String> clientId;
  /// The name of the SecretManager secret version resource storing the
  /// client secret.
  /// Format: `projects/{project}/secrets/{secret}/versions/{version}`
  /// Note: You should grant `roles/secretmanager.secretAccessor` role to the CES
  /// service agent
  /// `service-@gcp-sa-ces.iam.gserviceaccount.com`.
  final pulumi.Input<String> clientSecretVersion;
  /// OAuth grant types.
  /// Possible values:
  /// CLIENT_CREDENTIAL
  final pulumi.Input<String> oauthGrantType;
  /// The OAuth scopes to grant.
  final pulumi.Input<List<String>>? scopes;
  /// The token endpoint in the OAuth provider to exchange for an access token.
  final pulumi.Input<String> tokenEndpoint;

  /// Creates a new [ToolsetOpenApiToolsetApiAuthenticationOauthConfig].
  /// [clientId] The client ID from the OAuth provider.
  /// [clientSecretVersion] The name of the SecretManager secret version resource storing the
  /// [oauthGrantType] OAuth grant types.
  /// [scopes] The OAuth scopes to grant.
  /// [tokenEndpoint] The token endpoint in the OAuth provider to exchange for an access token.
  ToolsetOpenApiToolsetApiAuthenticationOauthConfig({
    required this.clientId,
    required this.clientSecretVersion,
    required this.oauthGrantType,
    this.scopes,
    required this.tokenEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecretVersion': clientSecretVersion,
      'oauthGrantType': oauthGrantType,
      'scopes': ?scopes,
      'tokenEndpoint': tokenEndpoint,
    };
  }

  factory ToolsetOpenApiToolsetApiAuthenticationOauthConfig.fromMap(Map<String, dynamic> map) {
    return ToolsetOpenApiToolsetApiAuthenticationOauthConfig(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecretVersion: pulumi.Input.fromValue(map['clientSecretVersion'] as String),
      oauthGrantType: pulumi.Input.fromValue(map['oauthGrantType'] as String),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tokenEndpoint: pulumi.Input.fromValue(map['tokenEndpoint'] as String),
    );
  }
}

