// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeedDetailsAmazonSqsV2SettingsAuthenticationAwsIamRoleAuth {
  /// AWS IAM Role for Identity Federation.
  final pulumi.Input<String?>? awsIamRoleArn;
  /// Subject ID to use for SQS.
  ///
  /// &lt;a name="nestedDetailsAmazonSqsV2SettingsAuthenticationSqsV2AccessKeySecretAuth"&gt;&lt;/a&gt;The `sqsV2AccessKeySecretAuth` block supports:
  final pulumi.Input<String?>? subjectId;

  /// Creates a new [FeedDetailsAmazonSqsV2SettingsAuthenticationAwsIamRoleAuth].
  /// [awsIamRoleArn] AWS IAM Role for Identity Federation.
  /// [subjectId] Subject ID to use for SQS.
  const FeedDetailsAmazonSqsV2SettingsAuthenticationAwsIamRoleAuth({
    this.awsIamRoleArn,
    this.subjectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsIamRoleArn': ?awsIamRoleArn,
      'subjectId': ?subjectId,
    };
  }

  factory FeedDetailsAmazonSqsV2SettingsAuthenticationAwsIamRoleAuth.fromMap(Map<String, dynamic> map) {
    return FeedDetailsAmazonSqsV2SettingsAuthenticationAwsIamRoleAuth(
      awsIamRoleArn: (() { final guardedValue = map['awsIamRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subjectId: (() { final guardedValue = map['subjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
