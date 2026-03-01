// ignore_for_file: unused_element, unnecessary_cast

import 'service_response.dart';

/// Result data returned by getBackup.
class GetBackupResult {
  /// The time when the backup was started.
  final String createTime;
  /// The description of the backup.
  final String description;
  /// The time when the backup finished creating.
  final String endTime;
  /// Immutable. The relative resource name of the backup, in the following form:projects/{project_number}/locations/{location_id}/services/{service_id}/backups/{backup_id}
  final String name;
  /// Services that are restoring from the backup.
  final List<String> restoringServices;
  /// The revision of the service at the time of backup.
  final ServiceResponse serviceRevision;
  /// The current state of the backup.
  final String state;

  /// Creates a new [GetBackupResult].
  /// [createTime] The time when the backup was started.
  /// [description] The description of the backup.
  /// [endTime] The time when the backup finished creating.
  /// [name] Immutable. The relative resource name of the backup, in the following form:projects/{project_number}/locations/{location_id}/services/{service_id}/backups/{backup_id}
  /// [restoringServices] Services that are restoring from the backup.
  /// [serviceRevision] The revision of the service at the time of backup.
  /// [state] The current state of the backup.
  GetBackupResult({
    required this.createTime,
    required this.description,
    required this.endTime,
    required this.name,
    required this.restoringServices,
    required this.serviceRevision,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'endTime': endTime,
      'name': name,
      'restoringServices': restoringServices,
      'serviceRevision': serviceRevision.toMap(),
      'state': state,
    };
  }

  factory GetBackupResult.fromMap(Map<String, dynamic> map) {
    return GetBackupResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      endTime: map['endTime'] as String,
      name: map['name'] as String,
      restoringServices: (map['restoringServices'] as List).cast<String>(),
      serviceRevision: ServiceResponse.fromMap((map['serviceRevision'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
    );
  }
}

