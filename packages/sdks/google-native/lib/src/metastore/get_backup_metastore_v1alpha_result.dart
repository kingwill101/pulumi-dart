// ignore_for_file: unused_element, unnecessary_cast

import 'service_response_metastore_v1alpha.dart';

/// Result data returned by getBackup.
class GetBackupMetastoreV1alphaResult {
  /// The time when the backup was started.
  final String? createTime;
  /// The description of the backup.
  final String? description;
  /// The time when the backup finished creating.
  final String? endTime;
  /// Immutable. The relative resource name of the backup, in the following form:projects/{project_number}/locations/{location_id}/services/{service_id}/backups/{backup_id}
  final String? name;
  /// Services that are restoring from the backup.
  final List<String>? restoringServices;
  /// The revision of the service at the time of backup.
  final ServiceResponseMetastoreV1alpha? serviceRevision;
  /// The current state of the backup.
  final String? state;

  /// Creates a new [GetBackupMetastoreV1alphaResult].
  /// [createTime] The time when the backup was started.
  /// [description] The description of the backup.
  /// [endTime] The time when the backup finished creating.
  /// [name] Immutable. The relative resource name of the backup, in the following form:projects/{project_number}/locations/{location_id}/services/{service_id}/backups/{backup_id}
  /// [restoringServices] Services that are restoring from the backup.
  /// [serviceRevision] The revision of the service at the time of backup.
  /// [state] The current state of the backup.
  const GetBackupMetastoreV1alphaResult({
    this.createTime,
    this.description,
    this.endTime,
    this.name,
    this.restoringServices,
    this.serviceRevision,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'endTime': ?endTime,
      'name': ?name,
      'restoringServices': ?restoringServices,
      'serviceRevision': ?serviceRevision?.toMap(),
      'state': ?state,
    };
  }

  factory GetBackupMetastoreV1alphaResult.fromMap(Map<String, dynamic> map) {
    return GetBackupMetastoreV1alphaResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      restoringServices: (() { final guardedValue = map['restoringServices']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      serviceRevision: (() { final guardedValue = map['serviceRevision']; if (guardedValue == null) return null; return ServiceResponseMetastoreV1alpha.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
