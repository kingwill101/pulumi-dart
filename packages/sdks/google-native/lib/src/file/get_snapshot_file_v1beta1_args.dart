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
    required pulumi.Output<String> instanceId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> snapshotId,
  }) :
      instanceId = pulumi.Input.asInput<String>(instanceId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      snapshotId = pulumi.Input.asInput<String>(snapshotId);

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
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      snapshotId: pulumi.Output.create<String>(map['snapshotId'] as String),
    );
  }
}

