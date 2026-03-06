// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_baremetalsolution_v2_get_snapshot_args_doc}
/// Arguments for getSnapshot.
/// {@endtemplate}
/// {@macro pulumi_baremetalsolution_v2_get_snapshot_args_doc}
class GetSnapshotArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> snapshotId;
  final pulumi.Input<String> volumeId;

  /// Creates a new [GetSnapshotArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [snapshotId] Required.
  /// [volumeId] Required.
  const GetSnapshotArgs({
    required this.location,
    this.project,
    required this.snapshotId,
    required this.volumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'snapshotId': snapshotId,
      'volumeId': volumeId,
    };
  }

  factory GetSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return GetSnapshotArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snapshotId: pulumi.Input.fromValue(map['snapshotId'] as String),
      volumeId: pulumi.Input.fromValue(map['volumeId'] as String),
    );
  }
}

