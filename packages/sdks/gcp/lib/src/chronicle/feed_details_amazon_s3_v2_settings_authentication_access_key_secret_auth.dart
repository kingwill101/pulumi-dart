// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeedDetailsAmazonS3V2SettingsAuthenticationAccessKeySecretAuth {
  /// Access Key ID for an AWS account (a 20-character, alphanumeric string).
  final pulumi.Input<String> accessKeyId;
  /// Secret Access Key for an AWS account (a 40-character string).
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String> secretAccessKey;

  /// Creates a new [FeedDetailsAmazonS3V2SettingsAuthenticationAccessKeySecretAuth].
  /// [accessKeyId] Access Key ID for an AWS account (a 20-character, alphanumeric string).
  /// [secretAccessKey] Secret Access Key for an AWS account (a 40-character string).
  const FeedDetailsAmazonS3V2SettingsAuthenticationAccessKeySecretAuth({
    required this.accessKeyId,
    required this.secretAccessKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyId': accessKeyId,
      'secretAccessKey': secretAccessKey,
    };
  }

  factory FeedDetailsAmazonS3V2SettingsAuthenticationAccessKeySecretAuth.fromMap(Map<String, dynamic> map) {
    return FeedDetailsAmazonS3V2SettingsAuthenticationAccessKeySecretAuth(
      accessKeyId: pulumi.Input.fromValue(map['accessKeyId'] as String),
      secretAccessKey: pulumi.Input.fromValue(map['secretAccessKey'] as String),
    );
  }
}
