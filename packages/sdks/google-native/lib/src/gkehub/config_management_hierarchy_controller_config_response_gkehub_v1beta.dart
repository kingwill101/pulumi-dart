// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for Hierarchy Controller
class ConfigManagementHierarchyControllerConfigResponseGkehubV1beta {
  /// Whether hierarchical resource quota is enabled in this cluster.
  final pulumi.Input<bool> enableHierarchicalResourceQuota;
  /// Whether pod tree labels are enabled in this cluster.
  final pulumi.Input<bool> enablePodTreeLabels;
  /// Whether Hierarchy Controller is enabled in this cluster.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ConfigManagementHierarchyControllerConfigResponseGkehubV1beta].
  /// [enableHierarchicalResourceQuota] Whether hierarchical resource quota is enabled in this cluster.
  /// [enablePodTreeLabels] Whether pod tree labels are enabled in this cluster.
  /// [enabled] Whether Hierarchy Controller is enabled in this cluster.
  ConfigManagementHierarchyControllerConfigResponseGkehubV1beta({
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

  factory ConfigManagementHierarchyControllerConfigResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return ConfigManagementHierarchyControllerConfigResponseGkehubV1beta(
      enableHierarchicalResourceQuota: pulumi.Input.fromValue(map['enableHierarchicalResourceQuota'] as bool),
      enablePodTreeLabels: pulumi.Input.fromValue(map['enablePodTreeLabels'] as bool),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

