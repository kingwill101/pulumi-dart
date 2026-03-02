// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CxWebhookGenericWebServiceOauthConfig {
  /// The client ID provided by the 3rd party platform.
  final pulumi.Input<String> clientId;
  /// The client secret provided by the 3rd party platform.  If the
  /// `secret_version_for_client_secret` field is set, this field will be
  /// ignored.
  final pulumi.Input<String>? clientSecret;
  /// The OAuth scopes to grant.
  final pulumi.Input<List<String>>? scopes;
  /// The name of the SecretManager secret version resource storing the
  /// client secret. If this field is set, the `client_secret` field will be
  /// ignored.
  /// Format: `projects/{project}/secrets/{secret}/versions/{version}`
  final pulumi.Input<String>? secretVersionForClientSecret;
  /// The token endpoint provided by the 3rd party platform to exchange an
  /// access token.
  final pulumi.Input<String> tokenEndpoint;

  /// Creates a new [CxWebhookGenericWebServiceOauthConfig].
  /// [clientId] The client ID provided by the 3rd party platform.
  /// [clientSecret] The client secret provided by the 3rd party platform.  If the
  /// [scopes] The OAuth scopes to grant.
  /// [secretVersionForClientSecret] The name of the SecretManager secret version resource storing the
  /// [tokenEndpoint] The token endpoint provided by the 3rd party platform to exchange an
  CxWebhookGenericWebServiceOauthConfig({
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

  factory CxWebhookGenericWebServiceOauthConfig.fromMap(Map<String, dynamic> map) {
    return CxWebhookGenericWebServiceOauthConfig(
      clientId: (map['clientId'] as String).input(),
      clientSecret: map['clientSecret'] == null ? null : (map['clientSecret'] as String).input(),
      scopes: map['scopes'] == null ? null : ((map['scopes'] as List).cast<String>()).input(),
      secretVersionForClientSecret: map['secretVersionForClientSecret'] == null ? null : (map['secretVersionForClientSecret'] as String).input(),
      tokenEndpoint: (map['tokenEndpoint'] as String).input(),
    );
  }
}

