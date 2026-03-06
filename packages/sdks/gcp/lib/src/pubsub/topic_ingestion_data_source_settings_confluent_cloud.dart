// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopicIngestionDataSourceSettingsConfluentCloud {
  /// The Confluent Cloud bootstrap server. The format is url:port.
  final pulumi.Input<String> bootstrapServer;
  /// The Confluent Cloud cluster ID.
  final pulumi.Input<String>? clusterId;
  /// The GCP service account to be used for Federated Identity authentication
  /// with Confluent Cloud.
  final pulumi.Input<String> gcpServiceAccount;
  /// Identity pool ID to be used for Federated Identity authentication with Confluent Cloud.
  final pulumi.Input<String> identityPoolId;
  /// Name of the Confluent Cloud topic that Pub/Sub will import from.
  final pulumi.Input<String> topic;

  /// Creates a new [TopicIngestionDataSourceSettingsConfluentCloud].
  /// [bootstrapServer] The Confluent Cloud bootstrap server. The format is url:port.
  /// [clusterId] The Confluent Cloud cluster ID.
  /// [gcpServiceAccount] The GCP service account to be used for Federated Identity authentication
  /// [identityPoolId] Identity pool ID to be used for Federated Identity authentication with Confluent Cloud.
  /// [topic] Name of the Confluent Cloud topic that Pub/Sub will import from.
  const TopicIngestionDataSourceSettingsConfluentCloud({
    required this.bootstrapServer,
    this.clusterId,
    required this.gcpServiceAccount,
    required this.identityPoolId,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootstrapServer': bootstrapServer,
      'clusterId': ?clusterId,
      'gcpServiceAccount': gcpServiceAccount,
      'identityPoolId': identityPoolId,
      'topic': topic,
    };
  }

  factory TopicIngestionDataSourceSettingsConfluentCloud.fromMap(Map<String, dynamic> map) {
    return TopicIngestionDataSourceSettingsConfluentCloud(
      bootstrapServer: pulumi.Input.fromValue(map['bootstrapServer'] as String),
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gcpServiceAccount: pulumi.Input.fromValue(map['gcpServiceAccount'] as String),
      identityPoolId: pulumi.Input.fromValue(map['identityPoolId'] as String),
      topic: pulumi.Input.fromValue(map['topic'] as String),
    );
  }
}

