// ignore_for_file: unused_element, unnecessary_cast


class AwsIntegrationsSns {
  /// Specify each AWS region that includes the resources that you want to monitor.
  final List<String>? awsRegions;
  /// Determine if extra inventory data be collected or not. May affect total data collection time and contribute to the Cloud provider API rate limit.
  final bool? fetchExtendedInventory;
  /// The data polling interval in seconds.
  final int? metricsPollingInterval;

  /// Creates a new [AwsIntegrationsSns].
  /// [awsRegions] Specify each AWS region that includes the resources that you want to monitor.
  /// [fetchExtendedInventory] Determine if extra inventory data be collected or not. May affect total data collection time and contribute to the Cloud provider API rate limit.
  /// [metricsPollingInterval] The data polling interval in seconds.
  AwsIntegrationsSns({
    this.awsRegions,
    this.fetchExtendedInventory,
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRegions': ?awsRegions,
      'fetchExtendedInventory': ?fetchExtendedInventory,
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory AwsIntegrationsSns.fromMap(Map<String, dynamic> map) {
    return AwsIntegrationsSns(
      awsRegions: map['awsRegions'] == null ? null : (map['awsRegions'] as List).cast<String>(),
      fetchExtendedInventory: map['fetchExtendedInventory'] == null ? null : map['fetchExtendedInventory'] as bool,
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
    );
  }
}

