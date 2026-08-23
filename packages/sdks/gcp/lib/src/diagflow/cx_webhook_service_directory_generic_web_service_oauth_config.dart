// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxWebhookServiceDirectoryGenericWebServiceOauthConfig {
  /// The client ID provided by the 3rd party platform.
  final pulumi.Input<String> clientId;
  /// The client secret provided by the 3rd party platform.  If the
  /// `secretVersionForClientSecret` field is set, this field will be
  /// ignored.
  final pulumi.Input<String>? clientSecret;
  /// The OAuth scopes to grant.
  final pulumi.Input<List<String>>? scopes;
  /// The name of the SecretManager secret version resource storing the
  /// client secret. If this field is set, the `clientSecret` field will be
  /// ignored.
  /// Format: `projects/{project}/secrets/{secret}/versions/{version}`
  final pulumi.Input<String>? secretVersionForClientSecret;
  /// The token endpoint provided by the 3rd party platform to exchange an
  /// access token.
  final pulumi.Input<String> tokenEndpoint;

  /// Creates a new [CxWebhookServiceDirectoryGenericWebServiceOauthConfig].
  /// [clientId] The client ID provided by the 3rd party platform.
  /// [clientSecret] The client secret provided by the 3rd party platform.  If the
  /// [scopes] The OAuth scopes to grant.
  /// [secretVersionForClientSecret] The name of the SecretManager secret version resource storing the
  /// [tokenEndpoint] The token endpoint provided by the 3rd party platform to exchange an
  const CxWebhookServiceDirectoryGenericWebServiceOauthConfig({
    required this.clientId,
    this.clientSecret,
    this.scopes,
    this.secretVersionForClientSecret,
    required this.tokenEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': ?clientSecret,
      'scopes': ?scopes,
      'secretVersionForClientSecret': ?secretVersionForClientSecret,
      'tokenEndpoint': tokenEndpoint,
    };
  }

  factory CxWebhookServiceDirectoryGenericWebServiceOauthConfig.fromMap(Map<String, dynamic> map) {
    return CxWebhookServiceDirectoryGenericWebServiceOauthConfig(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      secretVersionForClientSecret: (() { final guardedValue = map['secretVersionForClientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tokenEndpoint: pulumi.Input.fromValue(map['tokenEndpoint'] as String),
    );
  }
}
