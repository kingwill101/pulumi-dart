// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeatureMembershipConfigmanagementHierarchyController {
  /// Whether hierarchical resource quota is enabled in this cluster.
  final pulumi.Input<bool>? enableHierarchicalResourceQuota;
  /// Whether pod tree labels are enabled in this cluster.
  final pulumi.Input<bool>? enablePodTreeLabels;
  /// Whether Hierarchy Controller is enabled in this cluster.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [FeatureMembershipConfigmanagementHierarchyController].
  /// [enableHierarchicalResourceQuota] Whether hierarchical resource quota is enabled in this cluster.
  /// [enablePodTreeLabels] Whether pod tree labels are enabled in this cluster.
  /// [enabled] Whether Hierarchy Controller is enabled in this cluster.
  FeatureMembershipConfigmanagementHierarchyController({
    this.enableHierarchicalResourceQuota,
    this.enablePodTreeLabels,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableHierarchicalResourceQuota': ?enableHierarchicalResourceQuota,
      'enablePodTreeLabels': ?enablePodTreeLabels,
      'enabled': ?enabled,
    };
  }

  factory FeatureMembershipConfigmanagementHierarchyController.fromMap(Map<String, dynamic> map) {
    return FeatureMembershipConfigmanagementHierarchyController(
      enableHierarchicalResourceQuota: map['enableHierarchicalResourceQuota'] == null ? null : (map['enableHierarchicalResourceQuota'] as bool).input(),
      enablePodTreeLabels: map['enablePodTreeLabels'] == null ? null : (map['enablePodTreeLabels'] as bool).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
    );
  }
}

