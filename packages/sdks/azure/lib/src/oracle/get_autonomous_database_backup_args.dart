// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracle_get_autonomous_database_backup_get_autonomous_database_backup_args_doc}
/// Arguments for getAutonomousDatabaseBackup.
/// {@endtemplate}
/// {@macro pulumi_oracle_get_autonomous_database_backup_get_autonomous_database_backup_args_doc}
class GetAutonomousDatabaseBackupArgs {
  /// The azureId of the Autonomous Database for we will be listing the backups.
  final pulumi.Input<String> autonomousDatabaseId;
  final pulumi.Input<String> name;

  /// Creates a new [GetAutonomousDatabaseBackupArgs].
  /// [autonomousDatabaseId] The azureId of the Autonomous Database for we will be listing the backups.
  /// [name] Required.
  const GetAutonomousDatabaseBackupArgs({
    required this.autonomousDatabaseId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autonomousDatabaseId': autonomousDatabaseId,
      'name': name,
    };
  }

  factory GetAutonomousDatabaseBackupArgs.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabaseBackupArgs(
      autonomousDatabaseId: pulumi.Input.fromValue(map['autonomousDatabaseId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

