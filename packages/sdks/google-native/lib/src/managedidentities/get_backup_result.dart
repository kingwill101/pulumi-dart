// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getBackup.
class GetBackupResult {
  /// The time the backups was created.
  final String? createTime;
  /// Optional. Resource labels to represent user provided metadata.
  final Map<String, String>? labels;
  /// The unique name of the Backup in the form of `projects/{project_id}/locations/global/domains/{domain_name}/backups/{name}`
  final String? name;
  /// The current state of the backup.
  final String? state;
  /// Additional information about the current status of this backup, if available.
  final String? statusMessage;
  /// Indicates whether it’s an on-demand backup or scheduled.
  final String? type;
  /// Last update time.
  final String? updateTime;

  /// Creates a new [GetBackupResult].
  /// [createTime] The time the backups was created.
  /// [labels] Optional. Resource labels to represent user provided metadata.
  /// [name] The unique name of the Backup in the form of `projects/{project_id}/locations/global/domains/{domain_name}/backups/{name}`
  /// [state] The current state of the backup.
  /// [statusMessage] Additional information about the current status of this backup, if available.
  /// [type] Indicates whether it’s an on-demand backup or scheduled.
  /// [updateTime] Last update time.
  const GetBackupResult({
    this.createTime,
    this.labels,
    this.name,
    this.state,
    this.statusMessage,
    this.type,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'labels': ?labels,
      'name': ?name,
      'state': ?state,
      'statusMessage': ?statusMessage,
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }

  factory GetBackupResult.fromMap(Map<String, dynamic> map) {
    return GetBackupResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusMessage: (() { final guardedValue = map['statusMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
