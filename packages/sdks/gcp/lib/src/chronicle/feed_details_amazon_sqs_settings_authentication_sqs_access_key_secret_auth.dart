// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeedDetailsAmazonSqsSettingsAuthenticationSqsAccessKeySecretAuth {
  /// Access key ID.
  final pulumi.Input<String>? accessKeyId;
  /// Secret access key.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  ///
  /// &lt;a name="nestedDetailsAmazonSqsV2Settings"&gt;&lt;/a&gt;The `amazonSqsV2Settings` block supports:
  final pulumi.Input<String>? secretAccessKey;

  /// Creates a new [FeedDetailsAmazonSqsSettingsAuthenticationSqsAccessKeySecretAuth].
  /// [accessKeyId] Access key ID.
  /// [secretAccessKey] Secret access key.
  const FeedDetailsAmazonSqsSettingsAuthenticationSqsAccessKeySecretAuth({
    this.accessKeyId,
    this.secretAccessKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyId': ?accessKeyId,
      'secretAccessKey': ?secretAccessKey,
    };
  }

  factory FeedDetailsAmazonSqsSettingsAuthenticationSqsAccessKeySecretAuth.fromMap(Map<String, dynamic> map) {
    return FeedDetailsAmazonSqsSettingsAuthenticationSqsAccessKeySecretAuth(
      accessKeyId: (() { final guardedValue = map['accessKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretAccessKey: (() { final guardedValue = map['secretAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
