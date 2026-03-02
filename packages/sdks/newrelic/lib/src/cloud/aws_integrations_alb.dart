// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsIntegrationsAlb {
  /// Specify each AWS region that includes the resources that you want to monitor.
  final pulumi.Input<List<String>>? awsRegions;
  /// Determine if extra inventory data be collected or not. May affect total data collection time and contribute to the Cloud provider API rate limit.
  final pulumi.Input<bool>? fetchExtendedInventory;
  /// Specify if tags should be collected. May affect total data collection time and contribute to the Cloud provider API rate limit.
  final pulumi.Input<bool>? fetchTags;
  /// Specify each name or prefix for the LBs that you want to monitor. Filter values are case-sensitive.
  final pulumi.Input<List<String>>? loadBalancerPrefixes;
  /// The data polling interval in seconds.
  final pulumi.Input<int>? metricsPollingInterval;
  /// Specify a Tag key associated with the resources that you want to monitor. Filter values are case-sensitive.
  final pulumi.Input<String>? tagKey;
  /// Specify a Tag value associated with the resources that you want to monitor. Filter values are case-sensitive.
  final pulumi.Input<String>? tagValue;

  /// Creates a new [AwsIntegrationsAlb].
  /// [awsRegions] Specify each AWS region that includes the resources that you want to monitor.
  /// [fetchExtendedInventory] Determine if extra inventory data be collected or not. May affect total data collection time and contribute to the Cloud provider API rate limit.
  /// [fetchTags] Specify if tags should be collected. May affect total data collection time and contribute to the Cloud provider API rate limit.
  /// [loadBalancerPrefixes] Specify each name or prefix for the LBs that you want to monitor. Filter values are case-sensitive.
  /// [metricsPollingInterval] The data polling interval in seconds.
  /// [tagKey] Specify a Tag key associated with the resources that you want to monitor. Filter values are case-sensitive.
  /// [tagValue] Specify a Tag value associated with the resources that you want to monitor. Filter values are case-sensitive.
  AwsIntegrationsAlb({
    this.awsRegions,
    this.fetchExtendedInventory,
    this.fetchTags,
    this.loadBalancerPrefixes,
    this.metricsPollingInterval,
    this.tagKey,
    this.tagValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRegions': ?awsRegions,
      'fetchExtendedInventory': ?fetchExtendedInventory,
      'fetchTags': ?fetchTags,
      'loadBalancerPrefixes': ?loadBalancerPrefixes,
      'metricsPollingInterval': ?metricsPollingInterval,
      'tagKey': ?tagKey,
      'tagValue': ?tagValue,
    };
  }

  factory AwsIntegrationsAlb.fromMap(Map<String, dynamic> map) {
    return AwsIntegrationsAlb(
      awsRegions: map['awsRegions'] == null ? null : ((map['awsRegions'] as List).cast<String>()).input(),
      fetchExtendedInventory: map['fetchExtendedInventory'] == null ? null : (map['fetchExtendedInventory'] as bool).input(),
      fetchTags: map['fetchTags'] == null ? null : (map['fetchTags'] as bool).input(),
      loadBalancerPrefixes: map['loadBalancerPrefixes'] == null ? null : ((map['loadBalancerPrefixes'] as List).cast<String>()).input(),
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : (map['metricsPollingInterval'] as int).input(),
      tagKey: map['tagKey'] == null ? null : (map['tagKey'] as String).input(),
      tagValue: map['tagValue'] == null ? null : (map['tagValue'] as String).input(),
    );
  }
}

