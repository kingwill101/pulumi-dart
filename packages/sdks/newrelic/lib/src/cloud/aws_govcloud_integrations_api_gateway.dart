// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsGovcloudIntegrationsApiGateway {
  /// Specify each AWS region that includes the resources that you want to monitor
  final pulumi.Input<List<String>>? awsRegions;

  /// The data polling interval in seconds
  final pulumi.Input<int>? metricsPollingInterval;

  /// Determine if extra inventory data be collected or not. May affect total data collection time and contribute to the Cloud provider API rate limit.
  final pulumi.Input<List<String>>? stagePrefixes;

  /// Specify a Tag key associated with the resources that you want to monitor. Filter values are case-sensitive.
  final pulumi.Input<String>? tagKey;

  /// Specify a Tag value associated with the resources that you want to monitor. Filter values are case-sensitive.
  final pulumi.Input<String>? tagValue;

  /// Creates a new [AwsGovcloudIntegrationsApiGateway].
  /// [awsRegions] Specify each AWS region that includes the resources that you want to monitor
  /// [metricsPollingInterval] The data polling interval in seconds
  /// [stagePrefixes] Determine if extra inventory data be collected or not. May affect total data collection time and contribute to the Cloud provider API rate limit.
  /// [tagKey] Specify a Tag key associated with the resources that you want to monitor. Filter values are case-sensitive.
  /// [tagValue] Specify a Tag value associated with the resources that you want to monitor. Filter values are case-sensitive.
  AwsGovcloudIntegrationsApiGateway({
    this.awsRegions,
    this.metricsPollingInterval,
    this.stagePrefixes,
    this.tagKey,
    this.tagValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRegions': ?awsRegions,
      'metricsPollingInterval': ?metricsPollingInterval,
      'stagePrefixes': ?stagePrefixes,
      'tagKey': ?tagKey,
      'tagValue': ?tagValue,
    };
  }

  factory AwsGovcloudIntegrationsApiGateway.fromMap(Map<String, dynamic> map) {
    return AwsGovcloudIntegrationsApiGateway(
      awsRegions: (() {
        final guardedValue = map['awsRegions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      metricsPollingInterval: (() {
        final guardedValue = map['metricsPollingInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      stagePrefixes: (() {
        final guardedValue = map['stagePrefixes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
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
