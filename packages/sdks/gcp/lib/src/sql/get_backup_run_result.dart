// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getBackupRun.
class GetBackupRunResult {
  final int? backupId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? instance;
  /// Location of the backups.
  final String? location;
  final bool? mostRecent;
  final String? project;
  /// The time the backup operation actually started in UTC timezone in RFC 3339 format, for
  /// example 2012-11-15T16:19:00.094Z.
  final String? startTime;
  /// The status of this run. Refer to [API reference](https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1beta4/backupRuns#SqlBackupRunStatus) for possible status values.
  final String? status;

  /// Creates a new [GetBackupRunResult].
  /// [backupId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instance] Optional.
  /// [location] Location of the backups.
  /// [mostRecent] Optional.
  /// [project] Optional.
  /// [startTime] The time the backup operation actually started in UTC timezone in RFC 3339 format, for
  /// [status] The status of this run. Refer to [API reference](https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1beta4/backupRuns#SqlBackupRunStatus) for possible status values.
  const GetBackupRunResult({
    this.backupId,
    this.id,
    this.instance,
    this.location,
    this.mostRecent,
    this.project,
    this.startTime,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': ?backupId,
      'id': ?id,
      'instance': ?instance,
      'location': ?location,
      'mostRecent': ?mostRecent,
      'project': ?project,
      'startTime': ?startTime,
      'status': ?status,
    };
  }

  factory GetBackupRunResult.fromMap(Map<String, dynamic> map) {
    return GetBackupRunResult(
      backupId: (() { final guardedValue = map['backupId']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
