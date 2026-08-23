// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTopicIngestionDataSourceSettingAwsMsk {
  /// AWS role ARN to be used for Federated Identity authentication with
  /// MSK. Check the Pub/Sub docs for how to set up this role and the
  /// required permissions that need to be attached to it.
  final pulumi.Input<String> awsRoleArn;
  /// ARN that uniquely identifies the MSK cluster.
  final pulumi.Input<String> clusterArn;
  /// The GCP service account to be used for Federated Identity authentication
  /// with MSK (via a 'AssumeRoleWithWebIdentity' call for the provided
  /// role). The 'awsRoleArn' must be set up with 'accounts.google.com:sub'
  /// equals to this service account number.
  final pulumi.Input<String> gcpServiceAccount;
  /// The name of the MSK topic that Pub/Sub will import from.
  final pulumi.Input<String> topic;

  /// Creates a new [GetTopicIngestionDataSourceSettingAwsMsk].
  /// [awsRoleArn] AWS role ARN to be used for Federated Identity authentication with
  /// [clusterArn] ARN that uniquely identifies the MSK cluster.
  /// [gcpServiceAccount] The GCP service account to be used for Federated Identity authentication
  /// [topic] The name of the MSK topic that Pub/Sub will import from.
  const GetTopicIngestionDataSourceSettingAwsMsk({
    required this.awsRoleArn,
    required this.clusterArn,
    required this.gcpServiceAccount,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRoleArn': awsRoleArn,
      'clusterArn': clusterArn,
      'gcpServiceAccount': gcpServiceAccount,
      'topic': topic,
    };
  }

  factory GetTopicIngestionDataSourceSettingAwsMsk.fromMap(Map<String, dynamic> map) {
    return GetTopicIngestionDataSourceSettingAwsMsk(
      awsRoleArn: pulumi.Input.fromValue(map['awsRoleArn'] as String),
      clusterArn: pulumi.Input.fromValue(map['clusterArn'] as String),
      gcpServiceAccount: pulumi.Input.fromValue(map['gcpServiceAccount'] as String),
      topic: pulumi.Input.fromValue(map['topic'] as String),
    );
  }
}
