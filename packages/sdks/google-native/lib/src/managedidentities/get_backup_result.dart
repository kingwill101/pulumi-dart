// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getBackup.
class GetBackupResult {
  /// The time the backups was created.
  final String createTime;
  /// Optional. Resource labels to represent user provided metadata.
  final Map<String, String> labels;
  /// The unique name of the Backup in the form of `projects/{project_id}/locations/global/domains/{domain_name}/backups/{name}`
  final String name;
  /// The current state of the backup.
  final String state;
  /// Additional information about the current status of this backup, if available.
  final String statusMessage;
  /// Indicates whether it’s an on-demand backup or scheduled.
  final String type;
  /// Last update time.
  final String updateTime;

  /// Creates a new [GetBackupResult].
  /// [createTime] The time the backups was created.
  /// [labels] Optional. Resource labels to represent user provided metadata.
  /// [name] The unique name of the Backup in the form of `projects/{project_id}/locations/global/domains/{domain_name}/backups/{name}`
  /// [state] The current state of the backup.
  /// [statusMessage] Additional information about the current status of this backup, if available.
  /// [type] Indicates whether it’s an on-demand backup or scheduled.
  /// [updateTime] Last update time.
  const GetBackupResult({
    required this.createTime,
    required this.labels,
    required this.name,
    required this.state,
    required this.statusMessage,
    required this.type,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'labels': labels,
      'name': name,
      'state': state,
      'statusMessage': statusMessage,
      'type': type,
      'updateTime': updateTime,
    };
  }

  factory GetBackupResult.fromMap(Map<String, dynamic> map) {
    return GetBackupResult(
      createTime: map['createTime'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      state: map['state'] as String,
      statusMessage: map['statusMessage'] as String,
      type: map['type'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
