// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_instant_snapshot_compute_beta_args_doc}
/// Arguments for getInstantSnapshot.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_instant_snapshot_compute_beta_args_doc}
class GetInstantSnapshotComputeBetaArgs {
  final pulumi.Input<String> instantSnapshot;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetInstantSnapshotComputeBetaArgs].
  /// [instantSnapshot] Required.
  /// [project] Optional.
  /// [zone] Required.
  GetInstantSnapshotComputeBetaArgs({
    required pulumi.Output<String> instantSnapshot,
    pulumi.Output<String>? project,
    required pulumi.Output<String> zone,
  }) :
      instantSnapshot = pulumi.Input.asInput<String>(instantSnapshot),
      project = pulumi.Input.asOptionalInput<String>(project),
      zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instantSnapshot': instantSnapshot,
      'project': ?project,
      'zone': zone,
    };
  }

  factory GetInstantSnapshotComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetInstantSnapshotComputeBetaArgs(
      instantSnapshot: pulumi.Output.create<String>(map['instantSnapshot'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      zone: pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

