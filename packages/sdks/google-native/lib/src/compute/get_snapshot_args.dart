// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_snapshot_args_doc}
/// Arguments for getSnapshot.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_snapshot_args_doc}
class GetSnapshotArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> snapshot;

  /// Creates a new [GetSnapshotArgs].
  /// [project] Optional.
  /// [snapshot] Required.
  GetSnapshotArgs({this.project, required this.snapshot});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'project': ?project, 'snapshot': snapshot};
  }

  factory GetSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetSnapshotArgs(
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      snapshot: pulumi.Input.fromValue(map['snapshot'] as String),
    );
  }
}
