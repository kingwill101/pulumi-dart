// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_backup_run_get_backup_run_args_doc}
/// Arguments for getBackupRun.
/// {@endtemplate}
/// {@macro pulumi_sql_get_backup_run_get_backup_run_args_doc}
class GetBackupRunArgs {
  /// The identifier for this backup run. Unique only for a specific Cloud SQL instance.
  /// If left empty and multiple backups exist for the instance, `most_recent` must be set to `true`.
  final pulumi.Input<int>? backupId;

  /// The name of the instance the backup is taken from.
  final pulumi.Input<String> instance;

  /// Toggles use of the most recent backup run if multiple backups exist for a
  /// Cloud SQL instance.
  final pulumi.Input<bool>? mostRecent;

  /// The project to list instances for. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetBackupRunArgs].
  /// [backupId] The identifier for this backup run. Unique only for a specific Cloud SQL instance.
  /// [instance] The name of the instance the backup is taken from.
  /// [mostRecent] Toggles use of the most recent backup run if multiple backups exist for a
  /// [project] The project to list instances for. If it
  GetBackupRunArgs({
    this.backupId,
    required this.instance,
    this.mostRecent,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': ?backupId,
      'instance': instance,
      'mostRecent': ?mostRecent,
      'project': ?project,
    };
  }

  factory GetBackupRunArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupRunArgs(
      backupId: (() {
        final guardedValue = map['backupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      mostRecent: (() {
        final guardedValue = map['mostRecent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
