// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracle_get_autonomous_database_clone_from_backup_get_autonomous_database_clone_from_backup_args_doc}
/// Arguments for getAutonomousDatabaseCloneFromBackup.
/// {@endtemplate}
/// {@macro pulumi_oracle_get_autonomous_database_clone_from_backup_get_autonomous_database_clone_from_backup_args_doc}
class GetAutonomousDatabaseCloneFromBackupArgs {
  /// The name of this autonomous database clone from backup.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Autonomous Database Clone exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAutonomousDatabaseCloneFromBackupArgs].
  /// [name] The name of this autonomous database clone from backup.
  /// [resourceGroupName] The name of the Resource Group where the Autonomous Database Clone exists.
  GetAutonomousDatabaseCloneFromBackupArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAutonomousDatabaseCloneFromBackupArgs.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabaseCloneFromBackupArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

