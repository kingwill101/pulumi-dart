// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_continuous_backup_info_encryption_info.dart';

class GetClusterContinuousBackupInfo {
  /// The earliest restorable time that can be restored to. Output only field.
  final pulumi.Input<String> earliestRestorableTime;
  /// When ContinuousBackup was most recently enabled. Set to null if ContinuousBackup is not enabled.
  final pulumi.Input<String> enabledTime;
  /// Output only. The encryption information for the WALs and backups required for ContinuousBackup.
  final pulumi.Input<List<GetClusterContinuousBackupInfoEncryptionInfo>> encryptionInfos;
  /// Days of the week on which a continuous backup is taken. Output only field. Ignored if passed into the request.
  final pulumi.Input<List<String>> schedules;

  /// Creates a new [GetClusterContinuousBackupInfo].
  /// [earliestRestorableTime] The earliest restorable time that can be restored to. Output only field.
  /// [enabledTime] When ContinuousBackup was most recently enabled. Set to null if ContinuousBackup is not enabled.
  /// [encryptionInfos] Output only. The encryption information for the WALs and backups required for ContinuousBackup.
  /// [schedules] Days of the week on which a continuous backup is taken. Output only field. Ignored if passed into the request.
  const GetClusterContinuousBackupInfo({
    required this.earliestRestorableTime,
    required this.enabledTime,
    required this.encryptionInfos,
    required this.schedules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'earliestRestorableTime': earliestRestorableTime,
      'enabledTime': enabledTime,
      'encryptionInfos': pulumi.Input.mapInputValue<List<GetClusterContinuousBackupInfoEncryptionInfo>, List<Map<String, dynamic>>>(encryptionInfos, (value) => pulumi.Input.encodeList<GetClusterContinuousBackupInfoEncryptionInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schedules': schedules,
    };
  }

  factory GetClusterContinuousBackupInfo.fromMap(Map<String, dynamic> map) {
    return GetClusterContinuousBackupInfo(
      earliestRestorableTime: pulumi.Input.fromValue(map['earliestRestorableTime'] as String),
      enabledTime: pulumi.Input.fromValue(map['enabledTime'] as String),
      encryptionInfos: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterContinuousBackupInfoEncryptionInfo>(map['encryptionInfos']!, (value) => GetClusterContinuousBackupInfoEncryptionInfo.fromMap((value as Map).cast<String, dynamic>()))),
      schedules: pulumi.Input.fromValue((map['schedules'] as List).cast<String>()),
    );
  }
}
