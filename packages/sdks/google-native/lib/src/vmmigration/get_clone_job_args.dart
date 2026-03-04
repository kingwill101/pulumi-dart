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
    required this.cloneJobId,
    required this.location,
    required this.migratingVmId,
    this.project,
    required this.sourceId,
  });

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
      cloneJobId: pulumi.Input.fromValue(map['cloneJobId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      migratingVmId: pulumi.Input.fromValue(map['migratingVmId'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceId: pulumi.Input.fromValue(map['sourceId'] as String),
    );
  }
}
