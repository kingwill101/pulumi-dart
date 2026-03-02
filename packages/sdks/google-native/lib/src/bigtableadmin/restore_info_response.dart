// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_info_response.dart';

/// Information about a table restore.
class RestoreInfoResponse {
  /// Information about the backup used to restore the table. The backup may no longer exist.
  final pulumi.Input<BackupInfoResponse> backupInfo;
  /// The type of the restore source.
  final pulumi.Input<String> sourceType;

  /// Creates a new [RestoreInfoResponse].
  /// [backupInfo] Information about the backup used to restore the table. The backup may no longer exist.
  /// [sourceType] The type of the restore source.
  RestoreInfoResponse({
    required this.backupInfo,
    required this.sourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupInfo': pulumi.Input.mapInputValue<BackupInfoResponse, Map<String, dynamic>>(backupInfo, (value) => value.toMap()),
      'sourceType': sourceType,
    };
  }

  factory RestoreInfoResponse.fromMap(Map<String, dynamic> map) {
    return RestoreInfoResponse(
      backupInfo: (BackupInfoResponse.fromMap((map['backupInfo'] as Map).cast<String, dynamic>())).input(),
      sourceType: (map['sourceType'] as String).input(),
    );
  }
}

