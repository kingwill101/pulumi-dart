// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AzureIntegrationsRedisCache {
  /// The data polling interval in seconds
  final pulumi.Input<int>? metricsPollingInterval;

  /// Specify each Resource group associated with the resources that you want to monitor. Filter values are case-sensitive
  final pulumi.Input<List<String>>? resourceGroups;

  /// Creates a new [AzureIntegrationsRedisCache].
  /// [metricsPollingInterval] The data polling interval in seconds
  /// [resourceGroups] Specify each Resource group associated with the resources that you want to monitor. Filter values are case-sensitive
  AzureIntegrationsRedisCache({
    this.metricsPollingInterval,
    this.resourceGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricsPollingInterval': ?metricsPollingInterval,
      'resourceGroups': ?resourceGroups,
    };
  }

  factory AzureIntegrationsRedisCache.fromMap(Map<String, dynamic> map) {
    return AzureIntegrationsRedisCache(
      metricsPollingInterval: (() {
        final guardedValue = map['metricsPollingInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      resourceGroups: (() {
        final guardedValue = map['resourceGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
