// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeedDetailsAmazonSqsSettingsAuthenticationAdditionalS3AccessKeySecretAuth {
  /// Access key ID.
  final pulumi.Input<String?>? accessKeyId;
  /// Secret access key.
  final pulumi.Input<String?>? secretAccessKey;

  /// Creates a new [FeedDetailsAmazonSqsSettingsAuthenticationAdditionalS3AccessKeySecretAuth].
  /// [accessKeyId] Access key ID.
  /// [secretAccessKey] Secret access key.
  const FeedDetailsAmazonSqsSettingsAuthenticationAdditionalS3AccessKeySecretAuth({
    this.accessKeyId,
    this.secretAccessKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyId': ?accessKeyId,
      'secretAccessKey': ?secretAccessKey,
    };
  }

  factory FeedDetailsAmazonSqsSettingsAuthenticationAdditionalS3AccessKeySecretAuth.fromMap(Map<String, dynamic> map) {
    return FeedDetailsAmazonSqsSettingsAuthenticationAdditionalS3AccessKeySecretAuth(
      accessKeyId: (() { final guardedValue = map['accessKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretAccessKey: (() { final guardedValue = map['secretAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
