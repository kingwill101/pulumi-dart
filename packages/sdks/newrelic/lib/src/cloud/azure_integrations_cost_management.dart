// ignore_for_file: unused_element, unnecessary_cast


class AzureIntegrationsCostManagement {
  /// The data polling interval in seconds
  final int? metricsPollingInterval;
  /// Specify if additional cost data per tag should be collected. This field is case sensitive.
  final List<String>? tagKeys;

  /// Creates a new [AzureIntegrationsCostManagement].
  /// [metricsPollingInterval] The data polling interval in seconds
  /// [tagKeys] Specify if additional cost data per tag should be collected. This field is case sensitive.
  AzureIntegrationsCostManagement({
    this.metricsPollingInterval,
    this.tagKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricsPollingInterval': ?metricsPollingInterval,
      'tagKeys': ?tagKeys,
    };
  }

  factory AzureIntegrationsCostManagement.fromMap(Map<String, dynamic> map) {
    return AzureIntegrationsCostManagement(
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
      tagKeys: map['tagKeys'] == null ? null : (map['tagKeys'] as List).cast<String>(),
    );
  }
}

