// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowTemplatePlacementClusterSelector {
  /// Required. The cluster labels. Cluster must have all labels to match.
  final pulumi.Input<Map<String, String>> clusterLabels;
  /// The zone where workflow process executes. This parameter does not affect the selection of the cluster. If unspecified, the zone of the first cluster matching the selector is used.
  final pulumi.Input<String>? zone;

  /// Creates a new [WorkflowTemplatePlacementClusterSelector].
  /// [clusterLabels] Required. The cluster labels. Cluster must have all labels to match.
  /// [zone] The zone where workflow process executes. This parameter does not affect the selection of the cluster. If unspecified, the zone of the first cluster matching the selector is used.
  const WorkflowTemplatePlacementClusterSelector({
    required this.clusterLabels,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterLabels': clusterLabels,
      'zone': ?zone,
    };
  }

  factory WorkflowTemplatePlacementClusterSelector.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementClusterSelector(
      clusterLabels: pulumi.Input.fromValue((map['clusterLabels'] as Map).cast<String, String>()),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
