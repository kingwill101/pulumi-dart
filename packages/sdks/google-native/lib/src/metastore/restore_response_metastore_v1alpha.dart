// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The details of a metadata restore operation.
class RestoreResponseMetastoreV1alpha {
  /// The relative resource name of the metastore service backup to restore from, in the following form:projects/{project_id}/locations/{location_id}/services/{service_id}/backups/{backup_id}.
  final pulumi.Input<String> backup;
  /// Optional. A Cloud Storage URI specifying where the backup artifacts are stored, in the format gs:///.
  final pulumi.Input<String> backupLocation;
  /// The restore details containing the revision of the service to be restored to, in format of JSON.
  final pulumi.Input<String> details;
  /// The time when the restore ended.
  final pulumi.Input<String> endTime;
  /// The time when the restore started.
  final pulumi.Input<String> startTime;
  /// The current state of the restore.
  final pulumi.Input<String> state;
  /// The type of restore.
  final pulumi.Input<String> type;

  /// Creates a new [RestoreResponseMetastoreV1alpha].
  /// [backup] The relative resource name of the metastore service backup to restore from, in the following form:projects/{project_id}/locations/{location_id}/services/{service_id}/backups/{backup_id}.
  /// [backupLocation] Optional. A Cloud Storage URI specifying where the backup artifacts are stored, in the format gs:///.
  /// [details] The restore details containing the revision of the service to be restored to, in format of JSON.
  /// [endTime] The time when the restore ended.
  /// [startTime] The time when the restore started.
  /// [state] The current state of the restore.
  /// [type] The type of restore.
  RestoreResponseMetastoreV1alpha({
    required this.backup,
    required this.backupLocation,
    required this.details,
    required this.endTime,
    required this.startTime,
    required this.state,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backup': backup,
      'backupLocation': backupLocation,
      'details': details,
      'endTime': endTime,
      'startTime': startTime,
      'state': state,
      'type': type,
    };
  }

  factory RestoreResponseMetastoreV1alpha.fromMap(Map<String, dynamic> map) {
    return RestoreResponseMetastoreV1alpha(
      backup: (map['backup'] as String).input(),
      backupLocation: (map['backupLocation'] as String).input(),
      details: (map['details'] as String).input(),
      endTime: (map['endTime'] as String).input(),
      startTime: (map['startTime'] as String).input(),
      state: (map['state'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

