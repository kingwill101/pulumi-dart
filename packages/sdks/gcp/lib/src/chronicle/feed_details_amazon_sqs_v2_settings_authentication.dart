// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_amazon_sqs_v2_settings_authentication_aws_iam_role_auth.dart';
import 'feed_details_amazon_sqs_v2_settings_authentication_sqs_v2_access_key_secret_auth.dart';

class FeedDetailsAmazonSqsV2SettingsAuthentication {
  /// AWS IAM Role Auth for SQS V2.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsAmazonSqsV2SettingsAuthenticationAwsIamRoleAuth> awsIamRoleAuth;
  /// SQS V2 access key and secret auth.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsAmazonSqsV2SettingsAuthenticationSqsV2AccessKeySecretAuth> sqsV2AccessKeySecretAuth;

  /// Creates a new [FeedDetailsAmazonSqsV2SettingsAuthentication].
  /// [awsIamRoleAuth] AWS IAM Role Auth for SQS V2.
  /// [sqsV2AccessKeySecretAuth] SQS V2 access key and secret auth.
  const FeedDetailsAmazonSqsV2SettingsAuthentication({
    required this.awsIamRoleAuth,
    required this.sqsV2AccessKeySecretAuth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsIamRoleAuth': pulumi.Input.mapInputValue<FeedDetailsAmazonSqsV2SettingsAuthenticationAwsIamRoleAuth, Map<String, dynamic>>(awsIamRoleAuth, (value) => value.toMap()),
      'sqsV2AccessKeySecretAuth': pulumi.Input.mapInputValue<FeedDetailsAmazonSqsV2SettingsAuthenticationSqsV2AccessKeySecretAuth, Map<String, dynamic>>(sqsV2AccessKeySecretAuth, (value) => value.toMap()),
    };
  }

  factory FeedDetailsAmazonSqsV2SettingsAuthentication.fromMap(Map<String, dynamic> map) {
    return FeedDetailsAmazonSqsV2SettingsAuthentication(
      awsIamRoleAuth: pulumi.Input.fromValue(FeedDetailsAmazonSqsV2SettingsAuthenticationAwsIamRoleAuth.fromMap((map['awsIamRoleAuth']! as Map).cast<String, dynamic>())),
      sqsV2AccessKeySecretAuth: pulumi.Input.fromValue(FeedDetailsAmazonSqsV2SettingsAuthenticationSqsV2AccessKeySecretAuth.fromMap((map['sqsV2AccessKeySecretAuth']! as Map).cast<String, dynamic>())),
    );
  }
}
