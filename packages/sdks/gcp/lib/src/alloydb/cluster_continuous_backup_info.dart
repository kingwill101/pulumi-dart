// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_continuous_backup_info_encryption_info.dart';

class ClusterContinuousBackupInfo {
  /// (Output)
  /// The earliest restorable time that can be restored to. Output only field.
  final pulumi.Input<String>? earliestRestorableTime;
  /// (Output)
  /// When ContinuousBackup was most recently enabled. Set to null if ContinuousBackup is not enabled.
  final pulumi.Input<String>? enabledTime;
  /// (Output)
  /// Output only. The encryption information for the WALs and backups required for ContinuousBackup.
  /// Structure is documented below.
  final pulumi.Input<List<ClusterContinuousBackupInfoEncryptionInfo>>? encryptionInfos;
  /// (Output)
  /// Days of the week on which a continuous backup is taken. Output only field. Ignored if passed into the request.
  final pulumi.Input<List<String>>? schedules;

  /// Creates a new [ClusterContinuousBackupInfo].
  /// [earliestRestorableTime] (Output)
  /// [enabledTime] (Output)
  /// [encryptionInfos] (Output)
  /// [schedules] (Output)
  ClusterContinuousBackupInfo({
    this.earliestRestorableTime,
    this.enabledTime,
    this.encryptionInfos,
    this.schedules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'earliestRestorableTime': ?earliestRestorableTime,
      'enabledTime': ?enabledTime,
      'encryptionInfos': ?pulumi.Input.mapOptionalInputValue<List<ClusterContinuousBackupInfoEncryptionInfo>, List<Map<String, dynamic>>>(encryptionInfos, (value) => pulumi.Input.encodeList<ClusterContinuousBackupInfoEncryptionInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schedules': ?schedules,
    };
  }

  factory ClusterContinuousBackupInfo.fromMap(Map<String, dynamic> map) {
    return ClusterContinuousBackupInfo(
      earliestRestorableTime: map['earliestRestorableTime'] == null ? null : (map['earliestRestorableTime']! as String).input(),
      enabledTime: map['enabledTime'] == null ? null : (map['enabledTime']! as String).input(),
      encryptionInfos: map['encryptionInfos'] == null ? null : (pulumi.Input.decodeList<ClusterContinuousBackupInfoEncryptionInfo>(map['encryptionInfos']!, (value) => ClusterContinuousBackupInfoEncryptionInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      schedules: map['schedules'] == null ? null : ((map['schedules']! as List).cast<String>()).input(),
    );
  }
}

