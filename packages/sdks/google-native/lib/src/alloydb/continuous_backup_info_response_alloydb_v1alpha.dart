// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_info_response_alloydb_v1alpha.dart';

/// ContinuousBackupInfo describes the continuous backup properties of a cluster.
class ContinuousBackupInfoResponseAlloydbV1alpha {
  /// The earliest restorable time that can be restored to. Output only field.
  final pulumi.Input<String> earliestRestorableTime;
  /// When ContinuousBackup was most recently enabled. Set to null if ContinuousBackup is not enabled.
  final pulumi.Input<String> enabledTime;
  /// The encryption information for the WALs and backups required for ContinuousBackup.
  final pulumi.Input<EncryptionInfoResponseAlloydbV1alpha> encryptionInfo;
  /// Days of the week on which a continuous backup is taken. Output only field. Ignored if passed into the request.
  final pulumi.Input<List<String>> schedule;

  /// Creates a new [ContinuousBackupInfoResponseAlloydbV1alpha].
  /// [earliestRestorableTime] The earliest restorable time that can be restored to. Output only field.
  /// [enabledTime] When ContinuousBackup was most recently enabled. Set to null if ContinuousBackup is not enabled.
  /// [encryptionInfo] The encryption information for the WALs and backups required for ContinuousBackup.
  /// [schedule] Days of the week on which a continuous backup is taken. Output only field. Ignored if passed into the request.
  ContinuousBackupInfoResponseAlloydbV1alpha({
    required this.earliestRestorableTime,
    required this.enabledTime,
    required this.encryptionInfo,
    required this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'earliestRestorableTime': earliestRestorableTime,
      'enabledTime': enabledTime,
      'encryptionInfo': pulumi.Input.mapInputValue<EncryptionInfoResponseAlloydbV1alpha, Map<String, dynamic>>(encryptionInfo, (value) => value.toMap()),
      'schedule': schedule,
    };
  }

  factory ContinuousBackupInfoResponseAlloydbV1alpha.fromMap(Map<String, dynamic> map) {
    return ContinuousBackupInfoResponseAlloydbV1alpha(
      earliestRestorableTime: (map['earliestRestorableTime'] as String).input(),
      enabledTime: (map['enabledTime'] as String).input(),
      encryptionInfo: (EncryptionInfoResponseAlloydbV1alpha.fromMap((map['encryptionInfo'] as Map).cast<String, dynamic>())).input(),
      schedule: ((map['schedule'] as List).cast<String>()).input(),
    );
  }
}

