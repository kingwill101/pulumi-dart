// ignore_for_file: unused_element, unnecessary_cast


class AwsIntegrationsSqs {
  /// Specify each AWS region that includes the resources that you want to monitor.
  final List<String>? awsRegions;
  /// Determine if extra inventory data be collected or not. May affect total data collection time and contribute to the Cloud provider API rate limit.
  final bool? fetchExtendedInventory;
  /// Specify if tags should be collected. May affect total data collection time and contribute to the Cloud provider API rate limit.
  final bool? fetchTags;
  /// The data polling interval in seconds.
  final int? metricsPollingInterval;
  /// Specify each name or prefix for the Queues that you want to monitor. Filter values are case-sensitive.
  final List<String>? queuePrefixes;
  /// Specify a Tag key associated with the resources that you want to monitor. Filter values are case-sensitive.
  final String? tagKey;
  /// Specify a Tag value associated with the resources that you want to monitor. Filter values are case-sensitive.
  final String? tagValue;

  /// Creates a new [AwsIntegrationsSqs].
  /// [awsRegions] Specify each AWS region that includes the resources that you want to monitor.
  /// [fetchExtendedInventory] Determine if extra inventory data be collected or not. May affect total data collection time and contribute to the Cloud provider API rate limit.
  /// [fetchTags] Specify if tags should be collected. May affect total data collection time and contribute to the Cloud provider API rate limit.
  /// [metricsPollingInterval] The data polling interval in seconds.
  /// [queuePrefixes] Specify each name or prefix for the Queues that you want to monitor. Filter values are case-sensitive.
  /// [tagKey] Specify a Tag key associated with the resources that you want to monitor. Filter values are case-sensitive.
  /// [tagValue] Specify a Tag value associated with the resources that you want to monitor. Filter values are case-sensitive.
  AwsIntegrationsSqs({
    this.awsRegions,
    this.fetchExtendedInventory,
    this.fetchTags,
    this.metricsPollingInterval,
    this.queuePrefixes,
    this.tagKey,
    this.tagValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRegions': ?awsRegions,
      'fetchExtendedInventory': ?fetchExtendedInventory,
      'fetchTags': ?fetchTags,
      'metricsPollingInterval': ?metricsPollingInterval,
      'queuePrefixes': ?queuePrefixes,
      'tagKey': ?tagKey,
      'tagValue': ?tagValue,
    };
  }

  factory AwsIntegrationsSqs.fromMap(Map<String, dynamic> map) {
    return AwsIntegrationsSqs(
      awsRegions: map['awsRegions'] == null ? null : (map['awsRegions'] as List).cast<String>(),
      fetchExtendedInventory: map['fetchExtendedInventory'] == null ? null : map['fetchExtendedInventory'] as bool,
      fetchTags: map['fetchTags'] == null ? null : map['fetchTags'] as bool,
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
      queuePrefixes: map['queuePrefixes'] == null ? null : (map['queuePrefixes'] as List).cast<String>(),
      tagKey: map['tagKey'] == null ? null : map['tagKey'] as String,
      tagValue: map['tagValue'] == null ? null : map['tagValue'] as String,
    );
  }
}

