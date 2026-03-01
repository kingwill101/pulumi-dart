// ignore_for_file: unused_element, unnecessary_cast


class AwsIntegrationsEc2 {
  /// Specify each AWS region that includes the resources that you want to monitor.
  final List<String>? awsRegions;
  /// Specify if the old legacy metadata and tag names have to be kept, it will consume more ingest data size
  final bool? duplicateEc2Tags;
  /// Specify if IP addresses of ec2 instance should be collected
  final bool? fetchIpAddresses;
  /// The data polling interval in seconds.
  final int? metricsPollingInterval;
  /// Specify a Tag key associated with the resources that you want to monitor. Filter values are case-sensitive.
  final String? tagKey;
  /// Specify a Tag value associated with the resources that you want to monitor. Filter values are case-sensitive.
  final String? tagValue;

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
      awsRegions: map['awsRegions'] == null ? null : (map['awsRegions'] as List).cast<String>(),
      duplicateEc2Tags: map['duplicateEc2Tags'] == null ? null : map['duplicateEc2Tags'] as bool,
      fetchIpAddresses: map['fetchIpAddresses'] == null ? null : map['fetchIpAddresses'] as bool,
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
      tagKey: map['tagKey'] == null ? null : map['tagKey'] as String,
      tagValue: map['tagValue'] == null ? null : map['tagValue'] as String,
    );
  }
}

