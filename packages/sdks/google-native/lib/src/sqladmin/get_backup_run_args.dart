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
  GetBackupRunArgs({required this.id, required this.instance, this.project});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'instance': instance,
      'project': ?project,
    };
  }

  factory GetBackupRunArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupRunArgs(
      id: pulumi.Input.fromValue(map['id'] as String),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
