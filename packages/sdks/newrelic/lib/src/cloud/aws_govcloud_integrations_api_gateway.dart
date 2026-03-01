// ignore_for_file: unused_element, unnecessary_cast


class AwsGovcloudIntegrationsApiGateway {
  /// Specify each AWS region that includes the resources that you want to monitor
  final List<String>? awsRegions;
  /// The data polling interval in seconds
  final int? metricsPollingInterval;
  /// Determine if extra inventory data be collected or not. May affect total data collection time and contribute to the Cloud provider API rate limit.
  final List<String>? stagePrefixes;
  /// Specify a Tag key associated with the resources that you want to monitor. Filter values are case-sensitive.
  final String? tagKey;
  /// Specify a Tag value associated with the resources that you want to monitor. Filter values are case-sensitive.
  final String? tagValue;

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
      awsRegions: map['awsRegions'] == null ? null : (map['awsRegions'] as List).cast<String>(),
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
      stagePrefixes: map['stagePrefixes'] == null ? null : (map['stagePrefixes'] as List).cast<String>(),
      tagKey: map['tagKey'] == null ? null : map['tagKey'] as String,
      tagValue: map['tagValue'] == null ? null : map['tagValue'] as String,
    );
  }
}

