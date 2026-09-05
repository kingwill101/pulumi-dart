// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_autonomous_database_backups_autonomous_database_backup.dart';

/// Result data returned by getAutonomousDatabaseBackups.
class GetAutonomousDatabaseBackupsResult {
  /// An `autonomousDatabaseBackups` block as defined below.
  final List<GetAutonomousDatabaseBackupsAutonomousDatabaseBackup>? autonomousDatabaseBackups;
  final String? autonomousDatabaseId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;

  /// Creates a new [GetAutonomousDatabaseBackupsResult].
  /// [autonomousDatabaseBackups] An `autonomousDatabaseBackups` block as defined below.
  /// [autonomousDatabaseId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  const GetAutonomousDatabaseBackupsResult({
    this.autonomousDatabaseBackups,
    this.autonomousDatabaseId,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autonomousDatabaseBackups': ?(() { final guardedValue = autonomousDatabaseBackups; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAutonomousDatabaseBackupsAutonomousDatabaseBackup, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'autonomousDatabaseId': ?autonomousDatabaseId,
      'id': ?id,
    };
  }

  factory GetAutonomousDatabaseBackupsResult.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabaseBackupsResult(
      autonomousDatabaseBackups: (() { final guardedValue = map['autonomousDatabaseBackups']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAutonomousDatabaseBackupsAutonomousDatabaseBackup>(guardedValue, (value) => GetAutonomousDatabaseBackupsAutonomousDatabaseBackup.fromMap((value as Map).cast<String, dynamic>())); })(),
      autonomousDatabaseId: (() { final guardedValue = map['autonomousDatabaseId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
