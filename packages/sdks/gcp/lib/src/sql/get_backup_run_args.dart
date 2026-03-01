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
    pulumi.Output<int>? backupId,
    required pulumi.Output<String> instance,
    pulumi.Output<bool>? mostRecent,
    pulumi.Output<String>? project,
  }) :
      backupId = pulumi.Input.asOptionalInput<int>(backupId),
      instance = pulumi.Input.asInput<String>(instance),
      mostRecent = pulumi.Input.asOptionalInput<bool>(mostRecent),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      backupId: map['backupId'] == null ? null : pulumi.Output.create<int>(map['backupId'] as int),
      instance: pulumi.Output.create<String>(map['instance'] as String),
      mostRecent: map['mostRecent'] == null ? null : pulumi.Output.create<bool>(map['mostRecent'] as bool),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

