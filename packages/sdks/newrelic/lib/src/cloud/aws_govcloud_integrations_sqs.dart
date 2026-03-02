// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsGovcloudIntegrationsSqs {
  /// Specify each AWS region that includes the resources that you want to monitor
  final pulumi.Input<List<String>>? awsRegions;
  /// Determine if extra inventory data be collected or not. May affect total data collection time and contribute to the Cloud provider API rate limit.
  final pulumi.Input<bool>? fetchExtendedInventory;
  /// Specify if tags should be collected. May affect total data collection time and contribute to the Cloud provider API rate limit.
  final pulumi.Input<bool>? fetchTags;
  /// The data polling interval in seconds
  final pulumi.Input<int>? metricsPollingInterval;
  /// Specify each name or prefix for the Queues that you want to monitor. Filter values are case-sensitive.
  final pulumi.Input<List<String>>? queuePrefixes;
  /// Specify a Tag key associated with the resources that you want to monitor. Filter values are case-sensitive.
  final pulumi.Input<String>? tagKey;
  /// Specify a Tag value associated with the resources that you want to monitor. Filter values are case-sensitive.
  final pulumi.Input<String>? tagValue;

  /// Creates a new [AwsGovcloudIntegrationsSqs].
  /// [awsRegions] Specify each AWS region that includes the resources that you want to monitor
  /// [fetchExtendedInventory] Determine if extra inventory data be collected or not. May affect total data collection time and contribute to the Cloud provider API rate limit.
  /// [fetchTags] Specify if tags should be collected. May affect total data collection time and contribute to the Cloud provider API rate limit.
  /// [metricsPollingInterval] The data polling interval in seconds
  /// [queuePrefixes] Specify each name or prefix for the Queues that you want to monitor. Filter values are case-sensitive.
  /// [tagKey] Specify a Tag key associated with the resources that you want to monitor. Filter values are case-sensitive.
  /// [tagValue] Specify a Tag value associated with the resources that you want to monitor. Filter values are case-sensitive.
  AwsGovcloudIntegrationsSqs({
    this.awsRegions,
    this.fetchExtendedInventory,
    this.fetchTags,
    this.metricsPollingInterval,
    this.queuePrefixes,
    this.tagKey,
    this.tagValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRegions': ?awsRegions,
      'fetchExtendedInventory': ?fetchExtendedInventory,
      'fetchTags': ?fetchTags,
      'metricsPollingInterval': ?metricsPollingInterval,
      'queuePrefixes': ?queuePrefixes,
      'tagKey': ?tagKey,
      'tagValue': ?tagValue,
    };
  }

  factory AwsGovcloudIntegrationsSqs.fromMap(Map<String, dynamic> map) {
    return AwsGovcloudIntegrationsSqs(
      awsRegions: map['awsRegions'] == null ? null : ((map['awsRegions']! as List).cast<String>()).input(),
      fetchExtendedInventory: map['fetchExtendedInventory'] == null ? null : (map['fetchExtendedInventory']! as bool).input(),
      fetchTags: map['fetchTags'] == null ? null : (map['fetchTags']! as bool).input(),
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : (map['metricsPollingInterval']! as int).input(),
      queuePrefixes: map['queuePrefixes'] == null ? null : ((map['queuePrefixes']! as List).cast<String>()).input(),
      tagKey: map['tagKey'] == null ? null : (map['tagKey']! as String).input(),
      tagValue: map['tagValue'] == null ? null : (map['tagValue']! as String).input(),
    );
  }
}

