// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTopicIngestionDataSourceSettingAwsKinese {
  /// AWS role ARN to be used for Federated Identity authentication with
  /// Kinesis. Check the Pub/Sub docs for how to set up this role and the
  /// required permissions that need to be attached to it.
  final pulumi.Input<String> awsRoleArn;
  /// The Kinesis consumer ARN to used for ingestion in
  /// Enhanced Fan-Out mode. The consumer must be already
  /// created and ready to be used.
  final pulumi.Input<String> consumerArn;
  /// The GCP service account to be used for Federated Identity authentication
  /// with Kinesis (via a 'AssumeRoleWithWebIdentity' call for the provided
  /// role). The 'awsRoleArn' must be set up with 'accounts.google.com:sub'
  /// equals to this service account number.
  final pulumi.Input<String> gcpServiceAccount;
  /// The Kinesis stream ARN to ingest data from.
  final pulumi.Input<String> streamArn;

  /// Creates a new [GetTopicIngestionDataSourceSettingAwsKinese].
  /// [awsRoleArn] AWS role ARN to be used for Federated Identity authentication with
  /// [consumerArn] The Kinesis consumer ARN to used for ingestion in
  /// [gcpServiceAccount] The GCP service account to be used for Federated Identity authentication
  /// [streamArn] The Kinesis stream ARN to ingest data from.
  const GetTopicIngestionDataSourceSettingAwsKinese({
    required this.awsRoleArn,
    required this.consumerArn,
    required this.gcpServiceAccount,
    required this.streamArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRoleArn': awsRoleArn,
      'consumerArn': consumerArn,
      'gcpServiceAccount': gcpServiceAccount,
      'streamArn': streamArn,
    };
  }

  factory GetTopicIngestionDataSourceSettingAwsKinese.fromMap(Map<String, dynamic> map) {
    return GetTopicIngestionDataSourceSettingAwsKinese(
      awsRoleArn: pulumi.Input.fromValue(map['awsRoleArn'] as String),
      consumerArn: pulumi.Input.fromValue(map['consumerArn'] as String),
      gcpServiceAccount: pulumi.Input.fromValue(map['gcpServiceAccount'] as String),
      streamArn: pulumi.Input.fromValue(map['streamArn'] as String),
    );
  }
}
