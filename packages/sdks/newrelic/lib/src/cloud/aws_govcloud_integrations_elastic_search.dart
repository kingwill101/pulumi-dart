// ignore_for_file: unused_element, unnecessary_cast


class AwsGovcloudIntegrationsElasticSearch {
  /// Specify each AWS region that includes the resources that you want to monitor
  final List<String>? awsRegions;
  /// Specify if IP addresses of ec2 instance should be collected
  final bool? fetchNodes;
  /// The data polling interval in seconds
  final int? metricsPollingInterval;
  /// Specify a Tag key associated with the resources that you want to monitor. Filter values are case-sensitive.
  final String? tagKey;
  /// Specify a Tag value associated with the resources that you want to monitor. Filter values are case-sensitive.
  final String? tagValue;

  /// Creates a new [AwsGovcloudIntegrationsElasticSearch].
  /// [awsRegions] Specify each AWS region that includes the resources that you want to monitor
  /// [fetchNodes] Specify if IP addresses of ec2 instance should be collected
  /// [metricsPollingInterval] The data polling interval in seconds
  /// [tagKey] Specify a Tag key associated with the resources that you want to monitor. Filter values are case-sensitive.
  /// [tagValue] Specify a Tag value associated with the resources that you want to monitor. Filter values are case-sensitive.
  AwsGovcloudIntegrationsElasticSearch({
    this.awsRegions,
    this.fetchNodes,
    this.metricsPollingInterval,
    this.tagKey,
    this.tagValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRegions': ?awsRegions,
      'fetchNodes': ?fetchNodes,
      'metricsPollingInterval': ?metricsPollingInterval,
      'tagKey': ?tagKey,
      'tagValue': ?tagValue,
    };
  }

  factory AwsGovcloudIntegrationsElasticSearch.fromMap(Map<String, dynamic> map) {
    return AwsGovcloudIntegrationsElasticSearch(
      awsRegions: map['awsRegions'] == null ? null : (map['awsRegions'] as List).cast<String>(),
      fetchNodes: map['fetchNodes'] == null ? null : map['fetchNodes'] as bool,
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
      tagKey: map['tagKey'] == null ? null : map['tagKey'] as String,
      tagValue: map['tagValue'] == null ? null : map['tagValue'] as String,
    );
  }
}

