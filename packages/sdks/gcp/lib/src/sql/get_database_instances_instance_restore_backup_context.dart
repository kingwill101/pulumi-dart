// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstancesInstanceRestoreBackupContext {
  /// The ID of the backup run to restore from.
  final pulumi.Input<int> backupRunId;
  /// The ID of the instance that the backup was taken from.
  final pulumi.Input<String> instanceId;
  /// The ID of the project in which the resources belong. If it is not provided, the provider project is used.
  final pulumi.Input<String> project;

  /// Creates a new [GetDatabaseInstancesInstanceRestoreBackupContext].
  /// [backupRunId] The ID of the backup run to restore from.
  /// [instanceId] The ID of the instance that the backup was taken from.
  /// [project] The ID of the project in which the resources belong. If it is not provided, the provider project is used.
  GetDatabaseInstancesInstanceRestoreBackupContext({
    required this.backupRunId,
    required this.instanceId,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRunId': backupRunId,
      'instanceId': instanceId,
      'project': project,
    };
  }

  factory GetDatabaseInstancesInstanceRestoreBackupContext.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceRestoreBackupContext(
      backupRunId: (map['backupRunId'] as int).input(),
      instanceId: (map['instanceId'] as String).input(),
      project: (map['project'] as String).input(),
    );
  }
}

