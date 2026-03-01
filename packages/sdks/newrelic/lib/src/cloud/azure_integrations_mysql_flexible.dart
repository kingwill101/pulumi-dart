// ignore_for_file: unused_element, unnecessary_cast


class AzureIntegrationsMysqlFlexible {
  /// The data polling interval in seconds
  final int? metricsPollingInterval;
  /// Specify each Resource group associated with the resources that you want to monitor. Filter values are case-sensitive
  final List<String>? resourceGroups;

  /// Creates a new [AzureIntegrationsMysqlFlexible].
  /// [metricsPollingInterval] The data polling interval in seconds
  /// [resourceGroups] Specify each Resource group associated with the resources that you want to monitor. Filter values are case-sensitive
  AzureIntegrationsMysqlFlexible({
    this.metricsPollingInterval,
    this.resourceGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricsPollingInterval': ?metricsPollingInterval,
      'resourceGroups': ?resourceGroups,
    };
  }

  factory AzureIntegrationsMysqlFlexible.fromMap(Map<String, dynamic> map) {
    return AzureIntegrationsMysqlFlexible(
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
      resourceGroups: map['resourceGroups'] == null ? null : (map['resourceGroups'] as List).cast<String>(),
    );
  }
}

