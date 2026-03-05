// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GitHubEnterpriseSecrets represents the names of all necessary secrets in Secret Manager for a GitHub Enterprise server. Format is: projects//secrets/.
class GitHubEnterpriseSecrets {
  /// The resource name for the OAuth client ID secret in Secret Manager.
  final pulumi.Input<String>? oauthClientIdName;
  /// The resource name for the OAuth client ID secret version in Secret Manager.
  final pulumi.Input<String>? oauthClientIdVersionName;
  /// The resource name for the OAuth secret in Secret Manager.
  final pulumi.Input<String>? oauthSecretName;
  /// The resource name for the OAuth secret secret version in Secret Manager.
  final pulumi.Input<String>? oauthSecretVersionName;
  /// The resource name for the private key secret.
  final pulumi.Input<String>? privateKeyName;
  /// The resource name for the private key secret version.
  final pulumi.Input<String>? privateKeyVersionName;
  /// The resource name for the webhook secret in Secret Manager.
  final pulumi.Input<String>? webhookSecretName;
  /// The resource name for the webhook secret secret version in Secret Manager.
  final pulumi.Input<String>? webhookSecretVersionName;

  /// Creates a new [GitHubEnterpriseSecrets].
  /// [oauthClientIdName] The resource name for the OAuth client ID secret in Secret Manager.
  /// [oauthClientIdVersionName] The resource name for the OAuth client ID secret version in Secret Manager.
  /// [oauthSecretName] The resource name for the OAuth secret in Secret Manager.
  /// [oauthSecretVersionName] The resource name for the OAuth secret secret version in Secret Manager.
  /// [privateKeyName] The resource name for the private key secret.
  /// [privateKeyVersionName] The resource name for the private key secret version.
  /// [webhookSecretName] The resource name for the webhook secret in Secret Manager.
  /// [webhookSecretVersionName] The resource name for the webhook secret secret version in Secret Manager.
  GitHubEnterpriseSecrets({
    this.oauthClientIdName,
    this.oauthClientIdVersionName,
    this.oauthSecretName,
    this.oauthSecretVersionName,
    this.privateKeyName,
    this.privateKeyVersionName,
    this.webhookSecretName,
    this.webhookSecretVersionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oauthClientIdName': ?oauthClientIdName,
      'oauthClientIdVersionName': ?oauthClientIdVersionName,
      'oauthSecretName': ?oauthSecretName,
      'oauthSecretVersionName': ?oauthSecretVersionName,
      'privateKeyName': ?privateKeyName,
      'privateKeyVersionName': ?privateKeyVersionName,
      'webhookSecretName': ?webhookSecretName,
      'webhookSecretVersionName': ?webhookSecretVersionName,
    };
  }

  factory GitHubEnterpriseSecrets.fromMap(Map<String, dynamic> map) {
    return GitHubEnterpriseSecrets(
      oauthClientIdName: (() { final guardedValue = map['oauthClientIdName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauthClientIdVersionName: (() { final guardedValue = map['oauthClientIdVersionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauthSecretName: (() { final guardedValue = map['oauthSecretName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauthSecretVersionName: (() { final guardedValue = map['oauthSecretVersionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKeyName: (() { final guardedValue = map['privateKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKeyVersionName: (() { final guardedValue = map['privateKeyVersionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webhookSecretName: (() { final guardedValue = map['webhookSecretName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webhookSecretVersionName: (() { final guardedValue = map['webhookSecretVersionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

