// ignore_for_file: unused_element, unnecessary_cast


class AwsIntegrationsElb {
  /// Specify each AWS region that includes the resources that you want to monitor.
  final List<String>? awsRegions;
  /// Determine if extra inventory data be collected or not. May affect total data collection time and contribute to the Cloud provider API rate limit.
  final bool? fetchExtendedInventory;
  /// Specify if tags should be collected. May affect total data collection time and contribute to the Cloud provider API rate limit.
  final bool? fetchTags;
  /// The data polling interval in seconds.
  final int? metricsPollingInterval;

  /// Creates a new [AwsIntegrationsElb].
  /// [awsRegions] Specify each AWS region that includes the resources that you want to monitor.
  /// [fetchExtendedInventory] Determine if extra inventory data be collected or not. May affect total data collection time and contribute to the Cloud provider API rate limit.
  /// [fetchTags] Specify if tags should be collected. May affect total data collection time and contribute to the Cloud provider API rate limit.
  /// [metricsPollingInterval] The data polling interval in seconds.
  AwsIntegrationsElb({
    this.awsRegions,
    this.fetchExtendedInventory,
    this.fetchTags,
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRegions': ?awsRegions,
      'fetchExtendedInventory': ?fetchExtendedInventory,
      'fetchTags': ?fetchTags,
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory AwsIntegrationsElb.fromMap(Map<String, dynamic> map) {
    return AwsIntegrationsElb(
      awsRegions: map['awsRegions'] == null ? null : (map['awsRegions'] as List).cast<String>(),
      fetchExtendedInventory: map['fetchExtendedInventory'] == null ? null : map['fetchExtendedInventory'] as bool,
      fetchTags: map['fetchTags'] == null ? null : map['fetchTags'] as bool,
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
    );
  }
}

