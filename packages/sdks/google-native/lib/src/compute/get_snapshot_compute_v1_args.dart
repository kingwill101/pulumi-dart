// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_snapshot_compute_v1_args_doc}
/// Arguments for getSnapshot.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_snapshot_compute_v1_args_doc}
class GetSnapshotComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> snapshot;

  /// Creates a new [GetSnapshotComputeV1Args].
  /// [project] Optional.
  /// [snapshot] Required.
  GetSnapshotComputeV1Args({
    pulumi.Output<String>? project,
    required pulumi.Output<String> snapshot,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      snapshot = pulumi.Input.asInput<String>(snapshot);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'snapshot': snapshot,
    };
  }

  factory GetSnapshotComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetSnapshotComputeV1Args(
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      snapshot: pulumi.Output.create<String>(map['snapshot'] as String),
    );
  }
}

