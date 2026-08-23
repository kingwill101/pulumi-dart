// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_autonomous_database_backups_autonomous_database_backup.dart';

/// Result data returned by getAutonomousDatabaseBackups.
class GetAutonomousDatabaseBackupsResult {
  /// An `autonomousDatabaseBackups` block as defined below.
  final List<GetAutonomousDatabaseBackupsAutonomousDatabaseBackup> autonomousDatabaseBackups;
  final String autonomousDatabaseId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Creates a new [GetAutonomousDatabaseBackupsResult].
  /// [autonomousDatabaseBackups] An `autonomousDatabaseBackups` block as defined below.
  /// [autonomousDatabaseId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  const GetAutonomousDatabaseBackupsResult({
    required this.autonomousDatabaseBackups,
    required this.autonomousDatabaseId,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autonomousDatabaseBackups': pulumi.Input.encodeList<GetAutonomousDatabaseBackupsAutonomousDatabaseBackup, Map<String, dynamic>>(autonomousDatabaseBackups, (value) => value.toMap()),
      'autonomousDatabaseId': autonomousDatabaseId,
      'id': id,
    };
  }

  factory GetAutonomousDatabaseBackupsResult.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabaseBackupsResult(
      autonomousDatabaseBackups: pulumi.Input.decodeList<GetAutonomousDatabaseBackupsAutonomousDatabaseBackup>(map['autonomousDatabaseBackups']!, (value) => GetAutonomousDatabaseBackupsAutonomousDatabaseBackup.fromMap((value as Map).cast<String, dynamic>())),
      autonomousDatabaseId: map['autonomousDatabaseId'] as String,
      id: map['id'] as String,
    );
  }
}
