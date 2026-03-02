// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsIntegrationsKinesis {
  /// Specify each AWS region that includes the resources that you want to monitor.
  final pulumi.Input<List<String>>? awsRegions;
  /// Specify if Shards should be monitored. May affect total data collection time and contribute to the Cloud provider API rate limit.
  final pulumi.Input<bool>? fetchShards;
  /// Specify if tags and the extended inventory should be collected. May affect total data collection time and contribute to the Cloud provider API rate limit.
  final pulumi.Input<bool>? fetchTags;
  /// The data polling interval in seconds.
  final pulumi.Input<int>? metricsPollingInterval;
  /// Specify a Tag key associated with the resources that you want to monitor. Filter values are case-sensitive.
  final pulumi.Input<String>? tagKey;
  /// Specify a Tag value associated with the resources that you want to monitor. Filter values are case-sensitive.
  final pulumi.Input<String>? tagValue;

  /// Creates a new [AwsIntegrationsKinesis].
  /// [awsRegions] Specify each AWS region that includes the resources that you want to monitor.
  /// [fetchShards] Specify if Shards should be monitored. May affect total data collection time and contribute to the Cloud provider API rate limit.
  /// [fetchTags] Specify if tags and the extended inventory should be collected. May affect total data collection time and contribute to the Cloud provider API rate limit.
  /// [metricsPollingInterval] The data polling interval in seconds.
  /// [tagKey] Specify a Tag key associated with the resources that you want to monitor. Filter values are case-sensitive.
  /// [tagValue] Specify a Tag value associated with the resources that you want to monitor. Filter values are case-sensitive.
  AwsIntegrationsKinesis({
    this.awsRegions,
    this.fetchShards,
    this.fetchTags,
    this.metricsPollingInterval,
    this.tagKey,
    this.tagValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRegions': ?awsRegions,
      'fetchShards': ?fetchShards,
      'fetchTags': ?fetchTags,
      'metricsPollingInterval': ?metricsPollingInterval,
      'tagKey': ?tagKey,
      'tagValue': ?tagValue,
    };
  }

  factory AwsIntegrationsKinesis.fromMap(Map<String, dynamic> map) {
    return AwsIntegrationsKinesis(
      awsRegions: map['awsRegions'] == null ? null : ((map['awsRegions']! as List).cast<String>()).input(),
      fetchShards: map['fetchShards'] == null ? null : (map['fetchShards']! as bool).input(),
      fetchTags: map['fetchTags'] == null ? null : (map['fetchTags']! as bool).input(),
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : (map['metricsPollingInterval']! as int).input(),
      tagKey: map['tagKey'] == null ? null : (map['tagKey']! as String).input(),
      tagValue: map['tagValue'] == null ? null : (map['tagValue']! as String).input(),
    );
  }
}

