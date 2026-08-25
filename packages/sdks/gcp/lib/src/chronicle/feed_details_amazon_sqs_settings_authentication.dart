// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_amazon_sqs_settings_authentication_additional_s3_access_key_secret_auth.dart';
import 'feed_details_amazon_sqs_settings_authentication_sqs_access_key_secret_auth.dart';

class FeedDetailsAmazonSqsSettingsAuthentication {
  /// Additional S3 access key secret auth.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsAmazonSqsSettingsAuthenticationAdditionalS3AccessKeySecretAuth?>? additionalS3AccessKeySecretAuth;
  /// Amazon SQS access key and secret auth.
  /// Structure is documented below.
  ///
  ///
  /// &lt;a name="nestedDetailsAmazonSqsSettingsAuthenticationAdditionalS3AccessKeySecretAuth"&gt;&lt;/a&gt;The `additionalS3AccessKeySecretAuth` block supports:
  final pulumi.Input<FeedDetailsAmazonSqsSettingsAuthenticationSqsAccessKeySecretAuth?>? sqsAccessKeySecretAuth;

  /// Creates a new [FeedDetailsAmazonSqsSettingsAuthentication].
  /// [additionalS3AccessKeySecretAuth] Additional S3 access key secret auth.
  /// [sqsAccessKeySecretAuth] Amazon SQS access key and secret auth.
  const FeedDetailsAmazonSqsSettingsAuthentication({
    this.additionalS3AccessKeySecretAuth,
    this.sqsAccessKeySecretAuth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalS3AccessKeySecretAuth': ?pulumi.Input.mapOptionalInputValue<FeedDetailsAmazonSqsSettingsAuthenticationAdditionalS3AccessKeySecretAuth, Map<String, dynamic>>(additionalS3AccessKeySecretAuth, (value) => value.toMap()),
      'sqsAccessKeySecretAuth': ?pulumi.Input.mapOptionalInputValue<FeedDetailsAmazonSqsSettingsAuthenticationSqsAccessKeySecretAuth, Map<String, dynamic>>(sqsAccessKeySecretAuth, (value) => value.toMap()),
    };
  }

  factory FeedDetailsAmazonSqsSettingsAuthentication.fromMap(Map<String, dynamic> map) {
    return FeedDetailsAmazonSqsSettingsAuthentication(
      additionalS3AccessKeySecretAuth: (() { final guardedValue = map['additionalS3AccessKeySecretAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsAmazonSqsSettingsAuthenticationAdditionalS3AccessKeySecretAuth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sqsAccessKeySecretAuth: (() { final guardedValue = map['sqsAccessKeySecretAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsAmazonSqsSettingsAuthenticationSqsAccessKeySecretAuth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
