// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsIntegrationsEc2 {
  /// Specify each AWS region that includes the resources that you want to monitor.
  final pulumi.Input<List<String>>? awsRegions;

  /// Specify if the old legacy metadata and tag names have to be kept, it will consume more ingest data size
  final pulumi.Input<bool>? duplicateEc2Tags;

  /// Specify if IP addresses of ec2 instance should be collected
  final pulumi.Input<bool>? fetchIpAddresses;

  /// The data polling interval in seconds.
  final pulumi.Input<int>? metricsPollingInterval;

  /// Specify a Tag key associated with the resources that you want to monitor. Filter values are case-sensitive.
  final pulumi.Input<String>? tagKey;

  /// Specify a Tag value associated with the resources that you want to monitor. Filter values are case-sensitive.
  final pulumi.Input<String>? tagValue;

  /// Creates a new [AwsIntegrationsEc2].
  /// [awsRegions] Specify each AWS region that includes the resources that you want to monitor.
  /// [duplicateEc2Tags] Specify if the old legacy metadata and tag names have to be kept, it will consume more ingest data size
  /// [fetchIpAddresses] Specify if IP addresses of ec2 instance should be collected
  /// [metricsPollingInterval] The data polling interval in seconds.
  /// [tagKey] Specify a Tag key associated with the resources that you want to monitor. Filter values are case-sensitive.
  /// [tagValue] Specify a Tag value associated with the resources that you want to monitor. Filter values are case-sensitive.
  AwsIntegrationsEc2({
    this.awsRegions,
    this.duplicateEc2Tags,
    this.fetchIpAddresses,
    this.metricsPollingInterval,
    this.tagKey,
    this.tagValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRegions': ?awsRegions,
      'duplicateEc2Tags': ?duplicateEc2Tags,
      'fetchIpAddresses': ?fetchIpAddresses,
      'metricsPollingInterval': ?metricsPollingInterval,
      'tagKey': ?tagKey,
      'tagValue': ?tagValue,
    };
  }

  factory AwsIntegrationsEc2.fromMap(Map<String, dynamic> map) {
    return AwsIntegrationsEc2(
      awsRegions: (() {
        final guardedValue = map['awsRegions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      duplicateEc2Tags: (() {
        final guardedValue = map['duplicateEc2Tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      fetchIpAddresses: (() {
        final guardedValue = map['fetchIpAddresses'];
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
