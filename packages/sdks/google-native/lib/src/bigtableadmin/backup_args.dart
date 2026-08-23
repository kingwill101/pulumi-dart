// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigtableadmin_v2_backup_args_doc}
/// The set of arguments for Backup.
/// {@endtemplate}
/// {@macro pulumi_bigtableadmin_v2_backup_args_doc}
class BackupArgs {
  /// Required. The id of the backup to be created. The `backup_id` along with the parent `parent` are combined as {parent}/backups/{backup_id} to create the full backup name, of the form: `projects/{project}/instances/{instance}/clusters/{cluster}/backups/{backup_id}`. This string must be between 1 and 50 characters in length and match the regex _a-zA-Z0-9*.
  final pulumi.Input<String> backupId;
  final pulumi.Input<String> clusterId;
  /// The expiration time of the backup, with microseconds granularity that must be at least 6 hours and at most 90 days from the time the request is received. Once the `expire_time` has passed, Cloud Bigtable will delete the backup and free the resources used by the backup.
  final pulumi.Input<String> expireTime;
  final pulumi.Input<String> instanceId;
  /// A globally unique identifier for the backup which cannot be changed. Values are of the form `projects/{project}/instances/{instance}/clusters/{cluster}/ backups/_a-zA-Z0-9*` The final segment of the name must be between 1 and 50 characters in length. The backup is stored in the cluster identified by the prefix of the backup name of the form `projects/{project}/instances/{instance}/clusters/{cluster}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Immutable. Name of the table from which this backup was created. This needs to be in the same instance as the backup. Values are of the form `projects/{project}/instances/{instance}/tables/{source_table}`.
  final pulumi.Input<String> sourceTable;

  /// Creates a new [BackupArgs].
  /// [backupId] Required. The id of the backup to be created. The `backup_id` along with the parent `parent` are combined as {parent}/backups/{backup_id} to create the full backup name, of the form: `projects/{project}/instances/{instance}/clusters/{cluster}/backups/{backup_id}`. This string must be between 1 and 50 characters in length and match the regex _a-zA-Z0-9*.
  /// [clusterId] Required.
  /// [expireTime] The expiration time of the backup, with microseconds granularity that must be at least 6 hours and at most 90 days from the time the request is received. Once the `expire_time` has passed, Cloud Bigtable will delete the backup and free the resources used by the backup.
  /// [instanceId] Required.
  /// [name] A globally unique identifier for the backup which cannot be changed. Values are of the form `projects/{project}/instances/{instance}/clusters/{cluster}/ backups/_a-zA-Z0-9*` The final segment of the name must be between 1 and 50 characters in length. The backup is stored in the cluster identified by the prefix of the backup name of the form `projects/{project}/instances/{instance}/clusters/{cluster}`.
  /// [project] Optional.
  /// [sourceTable] Immutable. Name of the table from which this backup was created. This needs to be in the same instance as the backup. Values are of the form `projects/{project}/instances/{instance}/tables/{source_table}`.
  const BackupArgs({
    required this.backupId,
    required this.clusterId,
    required this.expireTime,
    required this.instanceId,
    this.name,
    this.project,
    required this.sourceTable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': backupId,
      'clusterId': clusterId,
      'expireTime': expireTime,
      'instanceId': instanceId,
      'name': ?name,
      'project': ?project,
      'sourceTable': sourceTable,
    };
  }

  factory BackupArgs.fromMap(Map<String, dynamic> map) {
    return BackupArgs(
      backupId: pulumi.Input.fromValue(map['backupId'] as String),
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      expireTime: pulumi.Input.fromValue(map['expireTime'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceTable: pulumi.Input.fromValue(map['sourceTable'] as String),
    );
  }
}
