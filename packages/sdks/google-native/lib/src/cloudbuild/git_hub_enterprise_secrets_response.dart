// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GitHubEnterpriseSecrets represents the names of all necessary secrets in Secret Manager for a GitHub Enterprise server. Format is: projects//secrets/.
class GitHubEnterpriseSecretsResponse {
  /// The resource name for the OAuth client ID secret in Secret Manager.
  final pulumi.Input<String> oauthClientIdName;
  /// The resource name for the OAuth client ID secret version in Secret Manager.
  final pulumi.Input<String> oauthClientIdVersionName;
  /// The resource name for the OAuth secret in Secret Manager.
  final pulumi.Input<String> oauthSecretName;
  /// The resource name for the OAuth secret secret version in Secret Manager.
  final pulumi.Input<String> oauthSecretVersionName;
  /// The resource name for the private key secret.
  final pulumi.Input<String> privateKeyName;
  /// The resource name for the private key secret version.
  final pulumi.Input<String> privateKeyVersionName;
  /// The resource name for the webhook secret in Secret Manager.
  final pulumi.Input<String> webhookSecretName;
  /// The resource name for the webhook secret secret version in Secret Manager.
  final pulumi.Input<String> webhookSecretVersionName;

  /// Creates a new [GitHubEnterpriseSecretsResponse].
  /// [oauthClientIdName] The resource name for the OAuth client ID secret in Secret Manager.
  /// [oauthClientIdVersionName] The resource name for the OAuth client ID secret version in Secret Manager.
  /// [oauthSecretName] The resource name for the OAuth secret in Secret Manager.
  /// [oauthSecretVersionName] The resource name for the OAuth secret secret version in Secret Manager.
  /// [privateKeyName] The resource name for the private key secret.
  /// [privateKeyVersionName] The resource name for the private key secret version.
  /// [webhookSecretName] The resource name for the webhook secret in Secret Manager.
  /// [webhookSecretVersionName] The resource name for the webhook secret secret version in Secret Manager.
  GitHubEnterpriseSecretsResponse({
    required this.oauthClientIdName,
    required this.oauthClientIdVersionName,
    required this.oauthSecretName,
    required this.oauthSecretVersionName,
    required this.privateKeyName,
    required this.privateKeyVersionName,
    required this.webhookSecretName,
    required this.webhookSecretVersionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oauthClientIdName': oauthClientIdName,
      'oauthClientIdVersionName': oauthClientIdVersionName,
      'oauthSecretName': oauthSecretName,
      'oauthSecretVersionName': oauthSecretVersionName,
      'privateKeyName': privateKeyName,
      'privateKeyVersionName': privateKeyVersionName,
      'webhookSecretName': webhookSecretName,
      'webhookSecretVersionName': webhookSecretVersionName,
    };
  }

  factory GitHubEnterpriseSecretsResponse.fromMap(Map<String, dynamic> map) {
    return GitHubEnterpriseSecretsResponse(
      oauthClientIdName: pulumi.Input.fromValue(map['oauthClientIdName'] as String),
      oauthClientIdVersionName: pulumi.Input.fromValue(map['oauthClientIdVersionName'] as String),
      oauthSecretName: pulumi.Input.fromValue(map['oauthSecretName'] as String),
      oauthSecretVersionName: pulumi.Input.fromValue(map['oauthSecretVersionName'] as String),
      privateKeyName: pulumi.Input.fromValue(map['privateKeyName'] as String),
      privateKeyVersionName: pulumi.Input.fromValue(map['privateKeyVersionName'] as String),
      webhookSecretName: pulumi.Input.fromValue(map['webhookSecretName'] as String),
      webhookSecretVersionName: pulumi.Input.fromValue(map['webhookSecretVersionName'] as String),
    );
  }
}

