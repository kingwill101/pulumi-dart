// ignore_for_file: unused_element, unnecessary_cast


/// BitbucketServerSecrets represents the secrets in Secret Manager for a Bitbucket Server.
class BitbucketServerSecrets {
  /// The resource name for the admin access token's secret version.
  final String adminAccessTokenVersionName;
  /// The resource name for the read access token's secret version.
  final String readAccessTokenVersionName;
  /// Immutable. The resource name for the webhook secret's secret version. Once this field has been set, it cannot be changed. If you need to change it, please create another BitbucketServerConfig.
  final String webhookSecretVersionName;

  /// Creates a new [BitbucketServerSecrets].
  /// [adminAccessTokenVersionName] The resource name for the admin access token's secret version.
  /// [readAccessTokenVersionName] The resource name for the read access token's secret version.
  /// [webhookSecretVersionName] Immutable. The resource name for the webhook secret's secret version. Once this field has been set, it cannot be changed. If you need to change it, please create another BitbucketServerConfig.
  BitbucketServerSecrets({
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

  factory BitbucketServerSecrets.fromMap(Map<String, dynamic> map) {
    return BitbucketServerSecrets(
      adminAccessTokenVersionName: map['adminAccessTokenVersionName'] as String,
      readAccessTokenVersionName: map['readAccessTokenVersionName'] as String,
      webhookSecretVersionName: map['webhookSecretVersionName'] as String,
    );
  }
}

