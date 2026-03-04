// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsIntegrationsElb {
  /// Specify each AWS region that includes the resources that you want to monitor.
  final pulumi.Input<List<String>>? awsRegions;

  /// Determine if extra inventory data be collected or not. May affect total data collection time and contribute to the Cloud provider API rate limit.
  final pulumi.Input<bool>? fetchExtendedInventory;

  /// Specify if tags should be collected. May affect total data collection time and contribute to the Cloud provider API rate limit.
  final pulumi.Input<bool>? fetchTags;

  /// The data polling interval in seconds.
  final pulumi.Input<int>? metricsPollingInterval;

  /// Creates a new [AwsIntegrationsElb].
  /// [awsRegions] Specify each AWS region that includes the resources that you want to monitor.
  /// [fetchExtendedInventory] Determine if extra inventory data be collected or not. May affect total data collection time and contribute to the Cloud provider API rate limit.
  /// [fetchTags] Specify if tags should be collected. May affect total data collection time and contribute to the Cloud provider API rate limit.
  /// [metricsPollingInterval] The data polling interval in seconds.
  AwsIntegrationsElb({
    this.awsRegions,
    this.fetchExtendedInventory,
    this.fetchTags,
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRegions': ?awsRegions,
      'fetchExtendedInventory': ?fetchExtendedInventory,
      'fetchTags': ?fetchTags,
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory AwsIntegrationsElb.fromMap(Map<String, dynamic> map) {
    return AwsIntegrationsElb(
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
      metricsPollingInterval: (() {
        final guardedValue = map['metricsPollingInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
