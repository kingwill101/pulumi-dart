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
      awsRegions: (() {
        final guardedValue = map['awsRegions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      fetchExtendedInventory: (() {
        final guardedValue = map['fetchExtendedInventory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      fetchTags: (() {
        final guardedValue = map['fetchTags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      loadBalancerPrefixes: (() {
        final guardedValue = map['loadBalancerPrefixes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      metricsPollingInterval: (() {
        final guardedValue = map['metricsPollingInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      tagKey: (() {
        final guardedValue = map['tagKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tagValue: (() {
        final guardedValue = map['tagValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
