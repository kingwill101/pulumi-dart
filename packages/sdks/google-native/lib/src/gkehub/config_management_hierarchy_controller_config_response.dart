// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for Hierarchy Controller
class ConfigManagementHierarchyControllerConfigResponse {
  /// Whether hierarchical resource quota is enabled in this cluster.
  final pulumi.Input<bool> enableHierarchicalResourceQuota;
  /// Whether pod tree labels are enabled in this cluster.
  final pulumi.Input<bool> enablePodTreeLabels;
  /// Whether Hierarchy Controller is enabled in this cluster.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ConfigManagementHierarchyControllerConfigResponse].
  /// [enableHierarchicalResourceQuota] Whether hierarchical resource quota is enabled in this cluster.
  /// [enablePodTreeLabels] Whether pod tree labels are enabled in this cluster.
  /// [enabled] Whether Hierarchy Controller is enabled in this cluster.
  ConfigManagementHierarchyControllerConfigResponse({
    required this.enableHierarchicalResourceQuota,
    required this.enablePodTreeLabels,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableHierarchicalResourceQuota': enableHierarchicalResourceQuota,
      'enablePodTreeLabels': enablePodTreeLabels,
      'enabled': enabled,
    };
  }

  factory ConfigManagementHierarchyControllerConfigResponse.fromMap(Map<String, dynamic> map) {
    return ConfigManagementHierarchyControllerConfigResponse(
      enableHierarchicalResourceQuota: (map['enableHierarchicalResourceQuota'] as bool).input(),
      enablePodTreeLabels: (map['enablePodTreeLabels'] as bool).input(),
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

