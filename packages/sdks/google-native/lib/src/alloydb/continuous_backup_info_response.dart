// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_info_response.dart';

/// ContinuousBackupInfo describes the continuous backup properties of a cluster.
class ContinuousBackupInfoResponse {
  /// The earliest restorable time that can be restored to. Output only field.
  final pulumi.Input<String> earliestRestorableTime;
  /// When ContinuousBackup was most recently enabled. Set to null if ContinuousBackup is not enabled.
  final pulumi.Input<String> enabledTime;
  /// The encryption information for the WALs and backups required for ContinuousBackup.
  final pulumi.Input<EncryptionInfoResponse> encryptionInfo;
  /// Days of the week on which a continuous backup is taken. Output only field. Ignored if passed into the request.
  final pulumi.Input<List<String>> schedule;

  /// Creates a new [ContinuousBackupInfoResponse].
  /// [earliestRestorableTime] The earliest restorable time that can be restored to. Output only field.
  /// [enabledTime] When ContinuousBackup was most recently enabled. Set to null if ContinuousBackup is not enabled.
  /// [encryptionInfo] The encryption information for the WALs and backups required for ContinuousBackup.
  /// [schedule] Days of the week on which a continuous backup is taken. Output only field. Ignored if passed into the request.
  const ContinuousBackupInfoResponse({
    required this.earliestRestorableTime,
    required this.enabledTime,
    required this.encryptionInfo,
    required this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'earliestRestorableTime': earliestRestorableTime,
      'enabledTime': enabledTime,
      'encryptionInfo': pulumi.Input.mapInputValue<EncryptionInfoResponse, Map<String, dynamic>>(encryptionInfo, (value) => value.toMap()),
      'schedule': schedule,
    };
  }

  factory ContinuousBackupInfoResponse.fromMap(Map<String, dynamic> map) {
    return ContinuousBackupInfoResponse(
      earliestRestorableTime: pulumi.Input.fromValue(map['earliestRestorableTime'] as String),
      enabledTime: pulumi.Input.fromValue(map['enabledTime'] as String),
      encryptionInfo: pulumi.Input.fromValue(EncryptionInfoResponse.fromMap((map['encryptionInfo']! as Map).cast<String, dynamic>())),
      schedule: pulumi.Input.fromValue((map['schedule'] as List).cast<String>()),
    );
  }
}

