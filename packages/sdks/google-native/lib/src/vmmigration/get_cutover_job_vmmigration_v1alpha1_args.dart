// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmmigration_v1alpha1_get_cutover_job_vmmigration_v1alpha1_args_doc}
/// Arguments for getCutoverJob.
/// {@endtemplate}
/// {@macro pulumi_vmmigration_v1alpha1_get_cutover_job_vmmigration_v1alpha1_args_doc}
class GetCutoverJobVmmigrationV1alpha1Args {
  final pulumi.Input<String> cutoverJobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> migratingVmId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sourceId;

  /// Creates a new [GetCutoverJobVmmigrationV1alpha1Args].
  /// [cutoverJobId] Required.
  /// [location] Required.
  /// [migratingVmId] Required.
  /// [project] Optional.
  /// [sourceId] Required.
  GetCutoverJobVmmigrationV1alpha1Args({
    required this.cutoverJobId,
    required this.location,
    required this.migratingVmId,
    this.project,
    required this.sourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cutoverJobId': cutoverJobId,
      'location': location,
      'migratingVmId': migratingVmId,
      'project': ?project,
      'sourceId': sourceId,
    };
  }

  factory GetCutoverJobVmmigrationV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetCutoverJobVmmigrationV1alpha1Args(
      cutoverJobId: pulumi.Input.fromValue(map['cutoverJobId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      migratingVmId: pulumi.Input.fromValue(map['migratingVmId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceId: pulumi.Input.fromValue(map['sourceId'] as String),
    );
  }
}

