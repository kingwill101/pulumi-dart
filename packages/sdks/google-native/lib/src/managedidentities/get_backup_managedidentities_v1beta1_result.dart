// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getBackup.
class GetBackupManagedidentitiesV1beta1Result {
  /// The time the backups was created.
  final String createTime;
  /// Optional. A short description of the backup.
  final String description;
  /// Optional. Resource labels to represent user provided metadata.
  final Map<String, String> labels;
  /// The unique name of the Backup in the form of projects/{project_id}/locations/global/domains/{domain_name}/backups/{name}
  final String name;
  /// The current state of the backup.
  final String state;
  /// Additional information about the current status of this backup, if available.
  final String statusMessage;
  /// Indicates whether it’s an on-demand backup or scheduled.
  final String type;
  /// Last update time.
  final String updateTime;

  /// Creates a new [GetBackupManagedidentitiesV1beta1Result].
  /// [createTime] The time the backups was created.
  /// [description] Optional. A short description of the backup.
  /// [labels] Optional. Resource labels to represent user provided metadata.
  /// [name] The unique name of the Backup in the form of projects/{project_id}/locations/global/domains/{domain_name}/backups/{name}
  /// [state] The current state of the backup.
  /// [statusMessage] Additional information about the current status of this backup, if available.
  /// [type] Indicates whether it’s an on-demand backup or scheduled.
  /// [updateTime] Last update time.
  const GetBackupManagedidentitiesV1beta1Result({
    required this.createTime,
    required this.description,
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
      'description': description,
      'labels': labels,
      'name': name,
      'state': state,
      'statusMessage': statusMessage,
      'type': type,
      'updateTime': updateTime,
    };
  }

  factory GetBackupManagedidentitiesV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetBackupManagedidentitiesV1beta1Result(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      state: map['state'] as String,
      statusMessage: map['statusMessage'] as String,
      type: map['type'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
