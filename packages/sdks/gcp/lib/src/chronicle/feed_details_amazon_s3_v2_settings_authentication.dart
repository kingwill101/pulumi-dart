// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_amazon_s3_v2_settings_authentication_access_key_secret_auth.dart';
import 'feed_details_amazon_s3_v2_settings_authentication_aws_iam_role_auth.dart';

class FeedDetailsAmazonS3V2SettingsAuthentication {
  /// S3 V2 access key and secret auth.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsAmazonS3V2SettingsAuthenticationAccessKeySecretAuth?>? accessKeySecretAuth;
  /// AWS IAM Role Auth for SQS V2.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsAmazonS3V2SettingsAuthenticationAwsIamRoleAuth?>? awsIamRoleAuth;

  /// Creates a new [FeedDetailsAmazonS3V2SettingsAuthentication].
  /// [accessKeySecretAuth] S3 V2 access key and secret auth.
  /// [awsIamRoleAuth] AWS IAM Role Auth for SQS V2.
  const FeedDetailsAmazonS3V2SettingsAuthentication({
    this.accessKeySecretAuth,
    this.awsIamRoleAuth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeySecretAuth': ?pulumi.Input.mapOptionalInputValue<FeedDetailsAmazonS3V2SettingsAuthenticationAccessKeySecretAuth, Map<String, dynamic>>(accessKeySecretAuth, (value) => value.toMap()),
      'awsIamRoleAuth': ?pulumi.Input.mapOptionalInputValue<FeedDetailsAmazonS3V2SettingsAuthenticationAwsIamRoleAuth, Map<String, dynamic>>(awsIamRoleAuth, (value) => value.toMap()),
    };
  }

  factory FeedDetailsAmazonS3V2SettingsAuthentication.fromMap(Map<String, dynamic> map) {
    return FeedDetailsAmazonS3V2SettingsAuthentication(
      accessKeySecretAuth: (() { final guardedValue = map['accessKeySecretAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsAmazonS3V2SettingsAuthenticationAccessKeySecretAuth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      awsIamRoleAuth: (() { final guardedValue = map['awsIamRoleAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsAmazonS3V2SettingsAuthenticationAwsIamRoleAuth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
