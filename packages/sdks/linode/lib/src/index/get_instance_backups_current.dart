// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_backups_current_disk.dart';

class GetInstanceBackupsCurrent {
  final pulumi.Input<bool> available;
  /// A list of the labels of the Configuration profiles that are part of the Backup.
  final pulumi.Input<List<String>> configs;
  /// The date the Backup was taken.
  final pulumi.Input<String> created;
  final pulumi.Input<List<GetInstanceBackupsCurrentDisk>> disks;
  /// The date the Backup completed.
  final pulumi.Input<String> finished;
  /// The unique ID of this Backup.
  final pulumi.Input<int> id;
  /// The label of this disk.
  final pulumi.Input<String> label;
  /// The current state of a specific Backup. (`paused`, `pending`, `running`, `needsPostProcessing`, `successful`, `failed`, `userAborted`)
  final pulumi.Input<String> status;
  /// This indicates whether the Backup is an automatic Backup or manual snapshot taken by the User at a specific point in time. (`auto`, `snapshot`)
  final pulumi.Input<String> type;
  /// The date the Backup was most recently updated.
  final pulumi.Input<String> updated;

  /// Creates a new [GetInstanceBackupsCurrent].
  /// [available] Required.
  /// [configs] A list of the labels of the Configuration profiles that are part of the Backup.
  /// [created] The date the Backup was taken.
  /// [disks] Required.
  /// [finished] The date the Backup completed.
  /// [id] The unique ID of this Backup.
  /// [label] The label of this disk.
  /// [status] The current state of a specific Backup. (`paused`, `pending`, `running`, `needsPostProcessing`, `successful`, `failed`, `userAborted`)
  /// [type] This indicates whether the Backup is an automatic Backup or manual snapshot taken by the User at a specific point in time. (`auto`, `snapshot`)
  /// [updated] The date the Backup was most recently updated.
  const GetInstanceBackupsCurrent({
    required this.available,
    required this.configs,
    required this.created,
    required this.disks,
    required this.finished,
    required this.id,
    required this.label,
    required this.status,
    required this.type,
    required this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'available': available,
      'configs': configs,
      'created': created,
      'disks': pulumi.Input.mapInputValue<List<GetInstanceBackupsCurrentDisk>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<GetInstanceBackupsCurrentDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'finished': finished,
      'id': id,
      'label': label,
      'status': status,
      'type': type,
      'updated': updated,
    };
  }

  factory GetInstanceBackupsCurrent.fromMap(Map<String, dynamic> map) {
    return GetInstanceBackupsCurrent(
      available: pulumi.Input.fromValue(map['available'] as bool),
      configs: pulumi.Input.fromValue((map['configs'] as List).cast<String>()),
      created: pulumi.Input.fromValue(map['created'] as String),
      disks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceBackupsCurrentDisk>(map['disks']!, (value) => GetInstanceBackupsCurrentDisk.fromMap((value as Map).cast<String, dynamic>()))),
      finished: pulumi.Input.fromValue(map['finished'] as String),
      id: pulumi.Input.fromValue(map['id'] as int),
      label: pulumi.Input.fromValue(map['label'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      updated: pulumi.Input.fromValue(map['updated'] as String),
    );
  }
}

