// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A selector that chooses target cluster for jobs based on metadata.
class ClusterSelector {
  /// The cluster labels. Cluster must have all labels to match.
  final pulumi.Input<Map<String, String>> clusterLabels;
  /// Optional. The zone where workflow process executes. This parameter does not affect the selection of the cluster.If unspecified, the zone of the first cluster matching the selector is used.
  final pulumi.Input<String>? zone;

  /// Creates a new [ClusterSelector].
  /// [clusterLabels] The cluster labels. Cluster must have all labels to match.
  /// [zone] Optional. The zone where workflow process executes. This parameter does not affect the selection of the cluster.If unspecified, the zone of the first cluster matching the selector is used.
  ClusterSelector({
    required this.clusterLabels,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterLabels': clusterLabels,
      'zone': ?zone,
    };
  }

  factory ClusterSelector.fromMap(Map<String, dynamic> map) {
    return ClusterSelector(
      clusterLabels: ((map['clusterLabels'] as Map).cast<String, String>()).input(),
      zone: map['zone'] == null ? null : (map['zone'] as String).input(),
    );
  }
}

