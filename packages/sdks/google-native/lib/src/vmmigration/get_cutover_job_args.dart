// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmmigration_v1_get_cutover_job_args_doc}
/// Arguments for getCutoverJob.
/// {@endtemplate}
/// {@macro pulumi_vmmigration_v1_get_cutover_job_args_doc}
class GetCutoverJobArgs {
  final pulumi.Input<String> cutoverJobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> migratingVmId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sourceId;

  /// Creates a new [GetCutoverJobArgs].
  /// [cutoverJobId] Required.
  /// [location] Required.
  /// [migratingVmId] Required.
  /// [project] Optional.
  /// [sourceId] Required.
  GetCutoverJobArgs({
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

  factory GetCutoverJobArgs.fromMap(Map<String, dynamic> map) {
    return GetCutoverJobArgs(
      cutoverJobId: (map['cutoverJobId'] as String).input(),
      location: (map['location'] as String).input(),
      migratingVmId: (map['migratingVmId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      sourceId: (map['sourceId'] as String).input(),
    );
  }
}

