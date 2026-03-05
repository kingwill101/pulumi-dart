// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_backups_automatic.dart';
import 'get_instance_backups_current.dart';
import 'get_instance_backups_in_progress.dart';

/// Result data returned by getInstanceBackups.
class GetInstanceBackupsResult {
  final List<GetInstanceBackupsAutomatic> automatics;
  final List<GetInstanceBackupsCurrent> currents;
  /// The unique ID of this Backup.
  final int id;
  final List<GetInstanceBackupsInProgress> inProgresses;
  final int linodeId;

  /// Creates a new [GetInstanceBackupsResult].
  /// [automatics] Required.
  /// [currents] Required.
  /// [id] The unique ID of this Backup.
  /// [inProgresses] Required.
  /// [linodeId] Required.
  GetInstanceBackupsResult({
    required this.automatics,
    required this.currents,
    required this.id,
    required this.inProgresses,
    required this.linodeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automatics': pulumi.Input.encodeList<GetInstanceBackupsAutomatic, Map<String, dynamic>>(automatics, (value) => value.toMap()),
      'currents': pulumi.Input.encodeList<GetInstanceBackupsCurrent, Map<String, dynamic>>(currents, (value) => value.toMap()),
      'id': id,
      'inProgresses': pulumi.Input.encodeList<GetInstanceBackupsInProgress, Map<String, dynamic>>(inProgresses, (value) => value.toMap()),
      'linodeId': linodeId,
    };
  }

  factory GetInstanceBackupsResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceBackupsResult(
      automatics: pulumi.Input.decodeList<GetInstanceBackupsAutomatic>(map['automatics']!, (value) => GetInstanceBackupsAutomatic.fromMap((value as Map).cast<String, dynamic>())),
      currents: pulumi.Input.decodeList<GetInstanceBackupsCurrent>(map['currents']!, (value) => GetInstanceBackupsCurrent.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as int,
      inProgresses: pulumi.Input.decodeList<GetInstanceBackupsInProgress>(map['inProgresses']!, (value) => GetInstanceBackupsInProgress.fromMap((value as Map).cast<String, dynamic>())),
      linodeId: map['linodeId'] as int,
    );
  }
}

