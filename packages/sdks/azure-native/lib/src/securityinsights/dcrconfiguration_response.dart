// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration of the destination of the data.
class DCRConfigurationResponse {
  /// Represents the data collection ingestion endpoint in log analytics.
  final pulumi.Input<String> dataCollectionEndpoint;
  /// The data collection rule immutable id, the rule defines the transformation and data destination.
  final pulumi.Input<String> dataCollectionRuleImmutableId;
  /// The stream we are sending the data to.
  final pulumi.Input<String> streamName;

  /// Creates a new [DCRConfigurationResponse].
  /// [dataCollectionEndpoint] Represents the data collection ingestion endpoint in log analytics.
  /// [dataCollectionRuleImmutableId] The data collection rule immutable id, the rule defines the transformation and data destination.
  /// [streamName] The stream we are sending the data to.
  DCRConfigurationResponse({
    required this.dataCollectionEndpoint,
    required this.dataCollectionRuleImmutableId,
    required this.streamName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCollectionEndpoint': dataCollectionEndpoint,
      'dataCollectionRuleImmutableId': dataCollectionRuleImmutableId,
      'streamName': streamName,
    };
  }

  factory DCRConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DCRConfigurationResponse(
      dataCollectionEndpoint: pulumi.Input.fromValue(map['dataCollectionEndpoint'] as String),
      dataCollectionRuleImmutableId: pulumi.Input.fromValue(map['dataCollectionRuleImmutableId'] as String),
      streamName: pulumi.Input.fromValue(map['streamName'] as String),
    );
  }
}

