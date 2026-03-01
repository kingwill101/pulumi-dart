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
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> snapshotId,
    required pulumi.Output<String> volumeId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      snapshotId = pulumi.Input.asInput<String>(snapshotId),
      volumeId = pulumi.Input.asInput<String>(volumeId);

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
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      snapshotId: pulumi.Output.create<String>(map['snapshotId'] as String),
      volumeId: pulumi.Output.create<String>(map['volumeId'] as String),
    );
  }
}

