// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmmigration_v1_get_clone_job_args_doc}
/// Arguments for getCloneJob.
/// {@endtemplate}
/// {@macro pulumi_vmmigration_v1_get_clone_job_args_doc}
class GetCloneJobArgs {
  final pulumi.Input<String> cloneJobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> migratingVmId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sourceId;

  /// Creates a new [GetCloneJobArgs].
  /// [cloneJobId] Required.
  /// [location] Required.
  /// [migratingVmId] Required.
  /// [project] Optional.
  /// [sourceId] Required.
  GetCloneJobArgs({
    required pulumi.Output<String> cloneJobId,
    required pulumi.Output<String> location,
    required pulumi.Output<String> migratingVmId,
    pulumi.Output<String>? project,
    required pulumi.Output<String> sourceId,
  }) :
      cloneJobId = pulumi.Input.asInput<String>(cloneJobId),
      location = pulumi.Input.asInput<String>(location),
      migratingVmId = pulumi.Input.asInput<String>(migratingVmId),
      project = pulumi.Input.asOptionalInput<String>(project),
      sourceId = pulumi.Input.asInput<String>(sourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloneJobId': cloneJobId,
      'location': location,
      'migratingVmId': migratingVmId,
      'project': ?project,
      'sourceId': sourceId,
    };
  }

  factory GetCloneJobArgs.fromMap(Map<String, dynamic> map) {
    return GetCloneJobArgs(
      cloneJobId: pulumi.Output.create<String>(map['cloneJobId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      migratingVmId: pulumi.Output.create<String>(map['migratingVmId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      sourceId: pulumi.Output.create<String>(map['sourceId'] as String),
    );
  }
}

