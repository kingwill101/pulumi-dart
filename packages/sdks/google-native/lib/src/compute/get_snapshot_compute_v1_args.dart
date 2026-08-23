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
  const GetSnapshotComputeV1Args({
    this.project,
    required this.snapshot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'snapshot': snapshot,
    };
  }

  factory GetSnapshotComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetSnapshotComputeV1Args(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshot: pulumi.Input.fromValue(map['snapshot'] as String),
    );
  }
}
