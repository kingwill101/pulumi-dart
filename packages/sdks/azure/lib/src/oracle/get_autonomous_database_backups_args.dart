// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracle_get_autonomous_database_backups_get_autonomous_database_backups_args_doc}
/// Arguments for getAutonomousDatabaseBackups.
/// {@endtemplate}
/// {@macro pulumi_oracle_get_autonomous_database_backups_get_autonomous_database_backups_args_doc}
class GetAutonomousDatabaseBackupsArgs {
  /// The azureId of the Autonomous Database for which the backups will be listed.
  final pulumi.Input<String> autonomousDatabaseId;

  /// Creates a new [GetAutonomousDatabaseBackupsArgs].
  /// [autonomousDatabaseId] The azureId of the Autonomous Database for which the backups will be listed.
  const GetAutonomousDatabaseBackupsArgs({
    required this.autonomousDatabaseId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autonomousDatabaseId': autonomousDatabaseId,
    };
  }

  factory GetAutonomousDatabaseBackupsArgs.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabaseBackupsArgs(
      autonomousDatabaseId: pulumi.Input.fromValue(map['autonomousDatabaseId'] as String),
    );
  }
}
