// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BitbucketServerConfigSecrets {
  /// The resource name for the admin access token's secret version.
  final pulumi.Input<String> adminAccessTokenVersionName;

  /// The resource name for the read access token's secret version.
  final pulumi.Input<String> readAccessTokenVersionName;

  /// Immutable. The resource name for the webhook secret's secret version. Once this field has been set, it cannot be changed.
  /// Changing this field will result in deleting/ recreating the resource.
  final pulumi.Input<String> webhookSecretVersionName;

  /// Creates a new [BitbucketServerConfigSecrets].
  /// [adminAccessTokenVersionName] The resource name for the admin access token's secret version.
  /// [readAccessTokenVersionName] The resource name for the read access token's secret version.
  /// [webhookSecretVersionName] Immutable. The resource name for the webhook secret's secret version. Once this field has been set, it cannot be changed.
  BitbucketServerConfigSecrets({
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

  factory BitbucketServerConfigSecrets.fromMap(Map<String, dynamic> map) {
    return BitbucketServerConfigSecrets(
      adminAccessTokenVersionName: pulumi.Input.fromValue(
        map['adminAccessTokenVersionName'] as String,
      ),
      readAccessTokenVersionName: pulumi.Input.fromValue(
        map['readAccessTokenVersionName'] as String,
      ),
      webhookSecretVersionName: pulumi.Input.fromValue(
        map['webhookSecretVersionName'] as String,
      ),
    );
  }
}
