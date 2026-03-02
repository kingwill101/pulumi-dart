// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_file_v1beta1_get_snapshot_file_v1beta1_args_doc}
/// Arguments for getSnapshot.
/// {@endtemplate}
/// {@macro pulumi_file_v1beta1_get_snapshot_file_v1beta1_args_doc}
class GetSnapshotFileV1beta1Args {
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> snapshotId;

  /// Creates a new [GetSnapshotFileV1beta1Args].
  /// [instanceId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [snapshotId] Required.
  GetSnapshotFileV1beta1Args({
    required this.instanceId,
    required this.location,
    this.project,
    required this.snapshotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'location': location,
      'project': ?project,
      'snapshotId': snapshotId,
    };
  }

  factory GetSnapshotFileV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetSnapshotFileV1beta1Args(
      instanceId: (map['instanceId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      snapshotId: (map['snapshotId'] as String).input(),
    );
  }
}

