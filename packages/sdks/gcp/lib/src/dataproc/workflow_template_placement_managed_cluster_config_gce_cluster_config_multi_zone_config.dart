// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigMultiZoneConfig {
  /// Specifies the target shape of the cluster. Possible values: `TARGET_SHAPE_UNSPECIFIED`, `ANY`.
  final pulumi.Input<String?>? targetShape;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigMultiZoneConfig].
  /// [targetShape] Specifies the target shape of the cluster. Possible values: `TARGET_SHAPE_UNSPECIFIED`, `ANY`.
  const WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigMultiZoneConfig({
    this.targetShape,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetShape': ?targetShape,
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigMultiZoneConfig.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigMultiZoneConfig(
      targetShape: (() { final guardedValue = map['targetShape']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
