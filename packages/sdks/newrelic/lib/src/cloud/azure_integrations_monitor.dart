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
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      excludeTags: (() { final guardedValue = map['excludeTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includeTags: (() { final guardedValue = map['includeTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      metricsPollingInterval: (() { final guardedValue = map['metricsPollingInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceGroups: (() { final guardedValue = map['resourceGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceTypes: (() { final guardedValue = map['resourceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

