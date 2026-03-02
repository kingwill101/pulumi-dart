// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationOauthConfig {
  /// (Output)
  /// The client ID from the OAuth provider.
  final pulumi.Input<String>? clientId;
  /// (Output)
  /// The name of the SecretManager secret version resource storing the
  /// client secret.
  /// Format: `projects/{project}/secrets/{secret}/versions/{version}`
  /// Note: You should grant `roles/secretmanager.secretAccessor` role to the CES
  /// service agent
  /// `service-@gcp-sa-ces.iam.gserviceaccount.com`.
  final pulumi.Input<String>? clientSecretVersion;
  /// (Output)
  /// OAuth grant types.
  /// Possible values:
  /// CLIENT_CREDENTIAL
  final pulumi.Input<String>? oauthGrantType;
  /// (Output)
  /// The OAuth scopes to grant.
  final pulumi.Input<List<String>>? scopes;
  /// (Output)
  /// The token endpoint in the OAuth provider to exchange for an access token.
  final pulumi.Input<String>? tokenEndpoint;

  /// Creates a new [AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationOauthConfig].
  /// [clientId] (Output)
  /// [clientSecretVersion] (Output)
  /// [oauthGrantType] (Output)
  /// [scopes] (Output)
  /// [tokenEndpoint] (Output)
  AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationOauthConfig({
    this.clientId,
    this.clientSecretVersion,
    this.oauthGrantType,
    this.scopes,
    this.tokenEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecretVersion': ?clientSecretVersion,
      'oauthGrantType': ?oauthGrantType,
      'scopes': ?scopes,
      'tokenEndpoint': ?tokenEndpoint,
    };
  }

  factory AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationOauthConfig.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotToolsetOpenApiToolsetApiAuthenticationOauthConfig(
      clientId: map['clientId'] == null ? null : (map['clientId'] as String).input(),
      clientSecretVersion: map['clientSecretVersion'] == null ? null : (map['clientSecretVersion'] as String).input(),
      oauthGrantType: map['oauthGrantType'] == null ? null : (map['oauthGrantType'] as String).input(),
      scopes: map['scopes'] == null ? null : ((map['scopes'] as List).cast<String>()).input(),
      tokenEndpoint: map['tokenEndpoint'] == null ? null : (map['tokenEndpoint'] as String).input(),
    );
  }
}

