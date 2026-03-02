// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsIntegrationsApiGateway {
  /// Specify each AWS region that includes the resources that you want to monitor
  final pulumi.Input<List<String>>? awsRegions;
  /// The data polling interval in seconds.
  final pulumi.Input<int>? metricsPollingInterval;
  /// Determine if extra inventory data be collected or not. May affect total data collection time and contribute to the Cloud provider API rate limit.
  final pulumi.Input<List<String>>? stagePrefixes;
  /// Specify a Tag key associated with the resources that you want to monitor. Filter values are case-sensitive.
  final pulumi.Input<String>? tagKey;
  /// Specify a Tag value associated with the resources that you want to monitor. Filter values are case-sensitive.
  final pulumi.Input<String>? tagValue;

  /// Creates a new [AwsIntegrationsApiGateway].
  /// [awsRegions] Specify each AWS region that includes the resources that you want to monitor
  /// [metricsPollingInterval] The data polling interval in seconds.
  /// [stagePrefixes] Determine if extra inventory data be collected or not. May affect total data collection time and contribute to the Cloud provider API rate limit.
  /// [tagKey] Specify a Tag key associated with the resources that you want to monitor. Filter values are case-sensitive.
  /// [tagValue] Specify a Tag value associated with the resources that you want to monitor. Filter values are case-sensitive.
  AwsIntegrationsApiGateway({
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

  factory AwsIntegrationsApiGateway.fromMap(Map<String, dynamic> map) {
    return AwsIntegrationsApiGateway(
      awsRegions: map['awsRegions'] == null ? null : ((map['awsRegions']! as List).cast<String>()).input(),
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : (map['metricsPollingInterval']! as int).input(),
      stagePrefixes: map['stagePrefixes'] == null ? null : ((map['stagePrefixes']! as List).cast<String>()).input(),
      tagKey: map['tagKey'] == null ? null : (map['tagKey']! as String).input(),
      tagValue: map['tagValue'] == null ? null : (map['tagValue']! as String).input(),
    );
  }
}

