// ignore_for_file: unused_element, unnecessary_cast


class FeatureMembershipConfigmanagementHierarchyController {
  /// Whether hierarchical resource quota is enabled in this cluster.
  final bool? enableHierarchicalResourceQuota;
  /// Whether pod tree labels are enabled in this cluster.
  final bool? enablePodTreeLabels;
  /// Whether Hierarchy Controller is enabled in this cluster.
  final bool? enabled;

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
      enableHierarchicalResourceQuota: map['enableHierarchicalResourceQuota'] == null ? null : map['enableHierarchicalResourceQuota'] as bool,
      enablePodTreeLabels: map['enablePodTreeLabels'] == null ? null : map['enablePodTreeLabels'] as bool,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

