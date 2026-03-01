// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_backups_current_disk.dart';

class GetInstanceBackupsCurrent {
  final bool available;
  /// A list of the labels of the Configuration profiles that are part of the Backup.
  final List<String> configs;
  /// The date the Backup was taken.
  final String created;
  final List<GetInstanceBackupsCurrentDisk> disks;
  /// The date the Backup completed.
  final String finished;
  /// The unique ID of this Backup.
  final int id;
  /// The label of this disk.
  final String label;
  /// The current state of a specific Backup. (`paused`, `pending`, `running`, `needsPostProcessing`, `successful`, `failed`, `userAborted`)
  final String status;
  /// This indicates whether the Backup is an automatic Backup or manual snapshot taken by the User at a specific point in time. (`auto`, `snapshot`)
  final String type;
  /// The date the Backup was most recently updated.
  final String updated;

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
  GetInstanceBackupsCurrent({
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
      'disks': pulumi.Input.encodeList<GetInstanceBackupsCurrentDisk, Map<String, dynamic>>(disks, (value) => value.toMap()),
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
      available: map['available'] as bool,
      configs: (map['configs'] as List).cast<String>(),
      created: map['created'] as String,
      disks: pulumi.Input.decodeList<GetInstanceBackupsCurrentDisk>(map['disks'], (value) => GetInstanceBackupsCurrentDisk.fromMap((value as Map).cast<String, dynamic>())),
      finished: map['finished'] as String,
      id: map['id'] as int,
      label: map['label'] as String,
      status: map['status'] as String,
      type: map['type'] as String,
      updated: map['updated'] as String,
    );
  }
}

