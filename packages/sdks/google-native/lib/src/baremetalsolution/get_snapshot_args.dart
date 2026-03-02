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
  GetSnapshotArgs({
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
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      snapshotId: (map['snapshotId'] as String).input(),
      volumeId: (map['volumeId'] as String).input(),
    );
  }
}

