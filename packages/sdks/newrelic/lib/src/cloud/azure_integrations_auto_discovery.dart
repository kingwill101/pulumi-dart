// ignore_for_file: unused_element, unnecessary_cast


class AzureIntegrationsAutoDiscovery {
  /// The data polling interval in seconds
  final int? metricsPollingInterval;
  /// Specify each Resource group associated with the resources that you want to monitor. Filter values are case-sensitive
  final List<String>? resourceGroups;

  /// Creates a new [AzureIntegrationsAutoDiscovery].
  /// [metricsPollingInterval] The data polling interval in seconds
  /// [resourceGroups] Specify each Resource group associated with the resources that you want to monitor. Filter values are case-sensitive
  AzureIntegrationsAutoDiscovery({
    this.metricsPollingInterval,
    this.resourceGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricsPollingInterval': ?metricsPollingInterval,
      'resourceGroups': ?resourceGroups,
    };
  }

  factory AzureIntegrationsAutoDiscovery.fromMap(Map<String, dynamic> map) {
    return AzureIntegrationsAutoDiscovery(
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
      resourceGroups: map['resourceGroups'] == null ? null : (map['resourceGroups'] as List).cast<String>(),
    );
  }
}

