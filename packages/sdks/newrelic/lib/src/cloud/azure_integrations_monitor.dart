// ignore_for_file: unused_element, unnecessary_cast


class AzureIntegrationsMonitor {
  /// A flag that specifies if the integration is active
  final bool? enabled;
  /// Specify resource tags in 'key:value' form to be excluded from monitoring
  final List<String>? excludeTags;
  /// Specify resource tags in 'key:value' form to be monitored
  final List<String>? includeTags;
  /// The data polling interval in seconds
  final int? metricsPollingInterval;
  /// Specify each Resource group associated with the resources that you want to monitor. Filter values are case-sensitive
  final List<String>? resourceGroups;
  /// Specify each Azure resource type that needs to be monitored
  final List<String>? resourceTypes;

  /// Creates a new [AzureIntegrationsMonitor].
  /// [enabled] A flag that specifies if the integration is active
  /// [excludeTags] Specify resource tags in 'key:value' form to be excluded from monitoring
  /// [includeTags] Specify resource tags in 'key:value' form to be monitored
  /// [metricsPollingInterval] The data polling interval in seconds
  /// [resourceGroups] Specify each Resource group associated with the resources that you want to monitor. Filter values are case-sensitive
  /// [resourceTypes] Specify each Azure resource type that needs to be monitored
  AzureIntegrationsMonitor({
    this.enabled,
    this.excludeTags,
    this.includeTags,
    this.metricsPollingInterval,
    this.resourceGroups,
    this.resourceTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'excludeTags': ?excludeTags,
      'includeTags': ?includeTags,
      'metricsPollingInterval': ?metricsPollingInterval,
      'resourceGroups': ?resourceGroups,
      'resourceTypes': ?resourceTypes,
    };
  }

  factory AzureIntegrationsMonitor.fromMap(Map<String, dynamic> map) {
    return AzureIntegrationsMonitor(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      excludeTags: map['excludeTags'] == null ? null : (map['excludeTags'] as List).cast<String>(),
      includeTags: map['includeTags'] == null ? null : (map['includeTags'] as List).cast<String>(),
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
      resourceGroups: map['resourceGroups'] == null ? null : (map['resourceGroups'] as List).cast<String>(),
      resourceTypes: map['resourceTypes'] == null ? null : (map['resourceTypes'] as List).cast<String>(),
    );
  }
}

