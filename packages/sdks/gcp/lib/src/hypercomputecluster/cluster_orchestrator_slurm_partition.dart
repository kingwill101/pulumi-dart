// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterOrchestratorSlurmPartition {
  /// ID of the partition, which is how users will identify it. Must conform to
  /// [RFC-1034](https://datatracker.ietf.org/doc/html/rfc1034) (lower-case,
  /// alphanumeric, and at most 63 characters).
  final pulumi.Input<String> id;
  /// IDs of the nodesets that make up this partition. Values must match
  /// SlurmNodeSet.id.
  final pulumi.Input<List<String>> nodeSetIds;

  /// Creates a new [ClusterOrchestratorSlurmPartition].
  /// [id] ID of the partition, which is how users will identify it. Must conform to
  /// [nodeSetIds] IDs of the nodesets that make up this partition. Values must match
  const ClusterOrchestratorSlurmPartition({
    required this.id,
    required this.nodeSetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nodeSetIds': nodeSetIds,
    };
  }

  factory ClusterOrchestratorSlurmPartition.fromMap(Map<String, dynamic> map) {
    return ClusterOrchestratorSlurmPartition(
      id: pulumi.Input.fromValue(map['id'] as String),
      nodeSetIds: pulumi.Input.fromValue((map['nodeSetIds'] as List).cast<String>()),
    );
  }
}
