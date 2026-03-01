// ignore_for_file: unused_element, unnecessary_cast


class AwsGovcloudIntegrationsDynamoDb {
  /// Specify each AWS region that includes the resources that you want to monitor
  final List<String>? awsRegions;
  /// Determine if extra inventory data be collected or not. May affect total data collection time and contribute to the Cloud provider API rate limit.
  final bool? fetchExtendedInventory;
  /// Specify if tags should be collected. May affect total data collection time and contribute to the Cloud provider API rate limit.
  final bool? fetchTags;
  /// The data polling interval in seconds
  final int? metricsPollingInterval;
  /// Specify a Tag key associated with the resources that you want to monitor. Filter values are case-sensitive.
  final String? tagKey;
  /// Specify a Tag value associated with the resources that you want to monitor. Filter values are case-sensitive.
  final String? tagValue;

  /// Creates a new [AwsGovcloudIntegrationsDynamoDb].
  /// [awsRegions] Specify each AWS region that includes the resources that you want to monitor
  /// [fetchExtendedInventory] Determine if extra inventory data be collected or not. May affect total data collection time and contribute to the Cloud provider API rate limit.
  /// [fetchTags] Specify if tags should be collected. May affect total data collection time and contribute to the Cloud provider API rate limit.
  /// [metricsPollingInterval] The data polling interval in seconds
  /// [tagKey] Specify a Tag key associated with the resources that you want to monitor. Filter values are case-sensitive.
  /// [tagValue] Specify a Tag value associated with the resources that you want to monitor. Filter values are case-sensitive.
  AwsGovcloudIntegrationsDynamoDb({
    this.awsRegions,
    this.fetchExtendedInventory,
    this.fetchTags,
    this.metricsPollingInterval,
    this.tagKey,
    this.tagValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRegions': ?awsRegions,
      'fetchExtendedInventory': ?fetchExtendedInventory,
      'fetchTags': ?fetchTags,
      'metricsPollingInterval': ?metricsPollingInterval,
      'tagKey': ?tagKey,
      'tagValue': ?tagValue,
    };
  }

  factory AwsGovcloudIntegrationsDynamoDb.fromMap(Map<String, dynamic> map) {
    return AwsGovcloudIntegrationsDynamoDb(
      awsRegions: map['awsRegions'] == null ? null : (map['awsRegions'] as List).cast<String>(),
      fetchExtendedInventory: map['fetchExtendedInventory'] == null ? null : map['fetchExtendedInventory'] as bool,
      fetchTags: map['fetchTags'] == null ? null : map['fetchTags'] as bool,
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
      tagKey: map['tagKey'] == null ? null : map['tagKey'] as String,
      tagValue: map['tagValue'] == null ? null : map['tagValue'] as String,
    );
  }
}

