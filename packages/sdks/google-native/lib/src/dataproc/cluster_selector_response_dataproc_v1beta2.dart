// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A selector that chooses target cluster for jobs based on metadata.
class ClusterSelectorResponseDataprocV1beta2 {
  /// The cluster labels. Cluster must have all labels to match.
  final pulumi.Input<Map<String, String>> clusterLabels;
  /// Optional. The zone where workflow process executes. This parameter does not affect the selection of the cluster.If unspecified, the zone of the first cluster matching the selector is used.
  final pulumi.Input<String> zone;

  /// Creates a new [ClusterSelectorResponseDataprocV1beta2].
  /// [clusterLabels] The cluster labels. Cluster must have all labels to match.
  /// [zone] Optional. The zone where workflow process executes. This parameter does not affect the selection of the cluster.If unspecified, the zone of the first cluster matching the selector is used.
  ClusterSelectorResponseDataprocV1beta2({
    required this.clusterLabels,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterLabels': clusterLabels,
      'zone': zone,
    };
  }

  factory ClusterSelectorResponseDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return ClusterSelectorResponseDataprocV1beta2(
      clusterLabels: pulumi.Input.fromValue((map['clusterLabels'] as Map).cast<String, String>()),
      zone: pulumi.Input.fromValue(map['zone'] as String),
    );
  }
}

