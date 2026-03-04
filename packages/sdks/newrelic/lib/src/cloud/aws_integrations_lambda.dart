// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsIntegrationsLambda {
  /// Specify each AWS region that includes the resources that you want to monitor.
  final pulumi.Input<List<String>>? awsRegions;

  /// Specify if tags and the extended inventory should be collected. May affect total data collection time and contribute to the Cloud provider API rate limit.
  final pulumi.Input<bool>? fetchTags;

  /// The data polling interval in seconds.
  final pulumi.Input<int>? metricsPollingInterval;

  /// Specify a Tag key associated with the resources that you want to monitor. Filter values are case-sensitive.
  final pulumi.Input<String>? tagKey;

  /// Specify a Tag value associated with the resources that you want to monitor. Filter values are case-sensitive.
  final pulumi.Input<String>? tagValue;

  /// Creates a new [AwsIntegrationsLambda].
  /// [awsRegions] Specify each AWS region that includes the resources that you want to monitor.
  /// [fetchTags] Specify if tags and the extended inventory should be collected. May affect total data collection time and contribute to the Cloud provider API rate limit.
  /// [metricsPollingInterval] The data polling interval in seconds.
  /// [tagKey] Specify a Tag key associated with the resources that you want to monitor. Filter values are case-sensitive.
  /// [tagValue] Specify a Tag value associated with the resources that you want to monitor. Filter values are case-sensitive.
  AwsIntegrationsLambda({
    this.awsRegions,
    this.fetchTags,
    this.metricsPollingInterval,
    this.tagKey,
    this.tagValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRegions': ?awsRegions,
      'fetchTags': ?fetchTags,
      'metricsPollingInterval': ?metricsPollingInterval,
      'tagKey': ?tagKey,
      'tagValue': ?tagValue,
    };
  }

  factory AwsIntegrationsLambda.fromMap(Map<String, dynamic> map) {
    return AwsIntegrationsLambda(
      awsRegions: (() {
        final guardedValue = map['awsRegions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
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
