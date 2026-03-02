// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration of the destination of the data.
class DCRConfiguration {
  /// Represents the data collection ingestion endpoint in log analytics.
  final pulumi.Input<String> dataCollectionEndpoint;
  /// The data collection rule immutable id, the rule defines the transformation and data destination.
  final pulumi.Input<String> dataCollectionRuleImmutableId;
  /// The stream we are sending the data to.
  final pulumi.Input<String> streamName;

  /// Creates a new [DCRConfiguration].
  /// [dataCollectionEndpoint] Represents the data collection ingestion endpoint in log analytics.
  /// [dataCollectionRuleImmutableId] The data collection rule immutable id, the rule defines the transformation and data destination.
  /// [streamName] The stream we are sending the data to.
  DCRConfiguration({
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

  factory DCRConfiguration.fromMap(Map<String, dynamic> map) {
    return DCRConfiguration(
      dataCollectionEndpoint: (map['dataCollectionEndpoint'] as String).input(),
      dataCollectionRuleImmutableId: (map['dataCollectionRuleImmutableId'] as String).input(),
      streamName: (map['streamName'] as String).input(),
    );
  }
}

