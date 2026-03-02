// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsIntegrationsVpc {
  /// Specify each AWS region that includes the resources that you want to monitor.
  final pulumi.Input<List<String>>? awsRegions;
  /// Specify if NAT gateway should be monitored. May affect total data collection time and contribute to the Cloud provider API rate limit.
  final pulumi.Input<bool>? fetchNatGateway;
  /// Specify if VPN should be monitored. May affect total data collection time and contribute to the Cloud provider API rate limit.
  final pulumi.Input<bool>? fetchVpn;
  /// The data polling interval in seconds.
  final pulumi.Input<int>? metricsPollingInterval;
  /// Specify a Tag key associated with the resources that you want to monitor. Filter values are case-sensitive.
  final pulumi.Input<String>? tagKey;
  /// Specify a Tag value associated with the resources that you want to monitor. Filter values are case-sensitive.
  final pulumi.Input<String>? tagValue;

  /// Creates a new [AwsIntegrationsVpc].
  /// [awsRegions] Specify each AWS region that includes the resources that you want to monitor.
  /// [fetchNatGateway] Specify if NAT gateway should be monitored. May affect total data collection time and contribute to the Cloud provider API rate limit.
  /// [fetchVpn] Specify if VPN should be monitored. May affect total data collection time and contribute to the Cloud provider API rate limit.
  /// [metricsPollingInterval] The data polling interval in seconds.
  /// [tagKey] Specify a Tag key associated with the resources that you want to monitor. Filter values are case-sensitive.
  /// [tagValue] Specify a Tag value associated with the resources that you want to monitor. Filter values are case-sensitive.
  AwsIntegrationsVpc({
    this.awsRegions,
    this.fetchNatGateway,
    this.fetchVpn,
    this.metricsPollingInterval,
    this.tagKey,
    this.tagValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRegions': ?awsRegions,
      'fetchNatGateway': ?fetchNatGateway,
      'fetchVpn': ?fetchVpn,
      'metricsPollingInterval': ?metricsPollingInterval,
      'tagKey': ?tagKey,
      'tagValue': ?tagValue,
    };
  }

  factory AwsIntegrationsVpc.fromMap(Map<String, dynamic> map) {
    return AwsIntegrationsVpc(
      awsRegions: map['awsRegions'] == null ? null : ((map['awsRegions'] as List).cast<String>()).input(),
      fetchNatGateway: map['fetchNatGateway'] == null ? null : (map['fetchNatGateway'] as bool).input(),
      fetchVpn: map['fetchVpn'] == null ? null : (map['fetchVpn'] as bool).input(),
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : (map['metricsPollingInterval'] as int).input(),
      tagKey: map['tagKey'] == null ? null : (map['tagKey'] as String).input(),
      tagValue: map['tagValue'] == null ? null : (map['tagValue'] as String).input(),
    );
  }
}

