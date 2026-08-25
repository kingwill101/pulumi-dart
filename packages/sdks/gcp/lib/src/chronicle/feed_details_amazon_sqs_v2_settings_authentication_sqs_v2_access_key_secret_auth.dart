// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeedDetailsAmazonSqsV2SettingsAuthenticationSqsV2AccessKeySecretAuth {
  /// Access key ID of the S3 bucket.  Ex: AKIABCDEFGHIJKL.
  final pulumi.Input<String?>? accessKeyId;
  /// Secret access key to access the S3 bucket.
  final pulumi.Input<String?>? secretAccessKey;

  /// Creates a new [FeedDetailsAmazonSqsV2SettingsAuthenticationSqsV2AccessKeySecretAuth].
  /// [accessKeyId] Access key ID of the S3 bucket.  Ex: AKIABCDEFGHIJKL.
  /// [secretAccessKey] Secret access key to access the S3 bucket.
  const FeedDetailsAmazonSqsV2SettingsAuthenticationSqsV2AccessKeySecretAuth({
    this.accessKeyId,
    this.secretAccessKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyId': ?accessKeyId,
      'secretAccessKey': ?secretAccessKey,
    };
  }

  factory FeedDetailsAmazonSqsV2SettingsAuthenticationSqsV2AccessKeySecretAuth.fromMap(Map<String, dynamic> map) {
    return FeedDetailsAmazonSqsV2SettingsAuthenticationSqsV2AccessKeySecretAuth(
      accessKeyId: (() { final guardedValue = map['accessKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretAccessKey: (() { final guardedValue = map['secretAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
