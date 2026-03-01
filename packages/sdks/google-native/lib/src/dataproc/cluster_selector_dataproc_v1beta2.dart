// ignore_for_file: unused_element, unnecessary_cast


/// A selector that chooses target cluster for jobs based on metadata.
class ClusterSelectorDataprocV1beta2 {
  /// The cluster labels. Cluster must have all labels to match.
  final Map<String, String> clusterLabels;
  /// Optional. The zone where workflow process executes. This parameter does not affect the selection of the cluster.If unspecified, the zone of the first cluster matching the selector is used.
  final String? zone;

  /// Creates a new [ClusterSelectorDataprocV1beta2].
  /// [clusterLabels] The cluster labels. Cluster must have all labels to match.
  /// [zone] Optional. The zone where workflow process executes. This parameter does not affect the selection of the cluster.If unspecified, the zone of the first cluster matching the selector is used.
  ClusterSelectorDataprocV1beta2({
    required this.clusterLabels,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterLabels': clusterLabels,
      'zone': ?zone,
    };
  }

  factory ClusterSelectorDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return ClusterSelectorDataprocV1beta2(
      clusterLabels: (map['clusterLabels'] as Map).cast<String, String>(),
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}

