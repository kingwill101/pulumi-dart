// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GitLabSecrets represents the secrets in Secret Manager for a GitLab integration.
class GitLabSecretsResponse {
  /// The resource name for the api access token’s secret version
  final pulumi.Input<String> apiAccessTokenVersion;
  /// Immutable. API Key that will be attached to webhook requests from GitLab to Cloud Build.
  final pulumi.Input<String> apiKeyVersion;
  /// The resource name for the read access token’s secret version
  final pulumi.Input<String> readAccessTokenVersion;
  /// Immutable. The resource name for the webhook secret’s secret version. Once this field has been set, it cannot be changed. If you need to change it, please create another GitLabConfig.
  final pulumi.Input<String> webhookSecretVersion;

  /// Creates a new [GitLabSecretsResponse].
  /// [apiAccessTokenVersion] The resource name for the api access token’s secret version
  /// [apiKeyVersion] Immutable. API Key that will be attached to webhook requests from GitLab to Cloud Build.
  /// [readAccessTokenVersion] The resource name for the read access token’s secret version
  /// [webhookSecretVersion] Immutable. The resource name for the webhook secret’s secret version. Once this field has been set, it cannot be changed. If you need to change it, please create another GitLabConfig.
  GitLabSecretsResponse({
    required this.apiAccessTokenVersion,
    required this.apiKeyVersion,
    required this.readAccessTokenVersion,
    required this.webhookSecretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiAccessTokenVersion': apiAccessTokenVersion,
      'apiKeyVersion': apiKeyVersion,
      'readAccessTokenVersion': readAccessTokenVersion,
      'webhookSecretVersion': webhookSecretVersion,
    };
  }

  factory GitLabSecretsResponse.fromMap(Map<String, dynamic> map) {
    return GitLabSecretsResponse(
      apiAccessTokenVersion: pulumi.Input.fromValue(map['apiAccessTokenVersion'] as String),
      apiKeyVersion: pulumi.Input.fromValue(map['apiKeyVersion'] as String),
      readAccessTokenVersion: pulumi.Input.fromValue(map['readAccessTokenVersion'] as String),
      webhookSecretVersion: pulumi.Input.fromValue(map['webhookSecretVersion'] as String),
    );
  }
}

