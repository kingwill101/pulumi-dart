// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AzureIntegrationsMonitor {
  /// A flag that specifies if the integration is active
  final pulumi.Input<bool>? enabled;
  /// Specify resource tags in 'key:value' form to be excluded from monitoring
  final pulumi.Input<List<String>>? excludeTags;
  /// Specify resource tags in 'key:value' form to be monitored
  final pulumi.Input<List<String>>? includeTags;
  /// The data polling interval in seconds
  final pulumi.Input<int>? metricsPollingInterval;
  /// Specify each Resource group associated with the resources that you want to monitor. Filter values are case-sensitive
  final pulumi.Input<List<String>>? resourceGroups;
  /// Specify each Azure resource type that needs to be monitored
  final pulumi.Input<List<String>>? resourceTypes;

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
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      excludeTags: map['excludeTags'] == null ? null : ((map['excludeTags']! as List).cast<String>()).input(),
      includeTags: map['includeTags'] == null ? null : ((map['includeTags']! as List).cast<String>()).input(),
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : (map['metricsPollingInterval']! as int).input(),
      resourceGroups: map['resourceGroups'] == null ? null : ((map['resourceGroups']! as List).cast<String>()).input(),
      resourceTypes: map['resourceTypes'] == null ? null : ((map['resourceTypes']! as List).cast<String>()).input(),
    );
  }
}

