// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sqladmin_v1_get_backup_run_args_doc}
/// Arguments for getBackupRun.
/// {@endtemplate}
/// {@macro pulumi_sqladmin_v1_get_backup_run_args_doc}
class GetBackupRunArgs {
  final pulumi.Input<String> id;
  final pulumi.Input<String> instance;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBackupRunArgs].
  /// [id] Required.
  /// [instance] Required.
  /// [project] Optional.
  GetBackupRunArgs({
    required pulumi.Output<String> id,
    required pulumi.Output<String> instance,
    pulumi.Output<String>? project,
  }) :
      id = pulumi.Input.asInput<String>(id),
      instance = pulumi.Input.asInput<String>(instance),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'instance': instance,
      'project': ?project,
    };
  }

  factory GetBackupRunArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupRunArgs(
      id: pulumi.Output.create<String>(map['id'] as String),
      instance: pulumi.Output.create<String>(map['instance'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

