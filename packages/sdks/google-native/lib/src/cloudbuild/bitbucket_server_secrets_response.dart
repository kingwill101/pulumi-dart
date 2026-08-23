// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// BitbucketServerSecrets represents the secrets in Secret Manager for a Bitbucket Server.
class BitbucketServerSecretsResponse {
  /// The resource name for the admin access token's secret version.
  final pulumi.Input<String> adminAccessTokenVersionName;
  /// The resource name for the read access token's secret version.
  final pulumi.Input<String> readAccessTokenVersionName;
  /// Immutable. The resource name for the webhook secret's secret version. Once this field has been set, it cannot be changed. If you need to change it, please create another BitbucketServerConfig.
  final pulumi.Input<String> webhookSecretVersionName;

  /// Creates a new [BitbucketServerSecretsResponse].
  /// [adminAccessTokenVersionName] The resource name for the admin access token's secret version.
  /// [readAccessTokenVersionName] The resource name for the read access token's secret version.
  /// [webhookSecretVersionName] Immutable. The resource name for the webhook secret's secret version. Once this field has been set, it cannot be changed. If you need to change it, please create another BitbucketServerConfig.
  const BitbucketServerSecretsResponse({
    required this.adminAccessTokenVersionName,
    required this.readAccessTokenVersionName,
    required this.webhookSecretVersionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminAccessTokenVersionName': adminAccessTokenVersionName,
      'readAccessTokenVersionName': readAccessTokenVersionName,
      'webhookSecretVersionName': webhookSecretVersionName,
    };
  }

  factory BitbucketServerSecretsResponse.fromMap(Map<String, dynamic> map) {
    return BitbucketServerSecretsResponse(
      adminAccessTokenVersionName: pulumi.Input.fromValue(map['adminAccessTokenVersionName'] as String),
      readAccessTokenVersionName: pulumi.Input.fromValue(map['readAccessTokenVersionName'] as String),
      webhookSecretVersionName: pulumi.Input.fromValue(map['webhookSecretVersionName'] as String),
    );
  }
}
