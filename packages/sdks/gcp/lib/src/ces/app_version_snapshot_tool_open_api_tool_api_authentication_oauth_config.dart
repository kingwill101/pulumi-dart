// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotToolOpenApiToolApiAuthenticationOauthConfig {
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

  /// Creates a new [AppVersionSnapshotToolOpenApiToolApiAuthenticationOauthConfig].
  /// [clientId] (Output)
  /// [clientSecretVersion] (Output)
  /// [oauthGrantType] (Output)
  /// [scopes] (Output)
  /// [tokenEndpoint] (Output)
  AppVersionSnapshotToolOpenApiToolApiAuthenticationOauthConfig({
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

  factory AppVersionSnapshotToolOpenApiToolApiAuthenticationOauthConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppVersionSnapshotToolOpenApiToolApiAuthenticationOauthConfig(
      clientId: (() {
        final guardedValue = map['clientId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientSecretVersion: (() {
        final guardedValue = map['clientSecretVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      oauthGrantType: (() {
        final guardedValue = map['oauthGrantType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scopes: (() {
        final guardedValue = map['scopes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      tokenEndpoint: (() {
        final guardedValue = map['tokenEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
