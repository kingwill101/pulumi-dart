// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackupPlanBackupConfigEncryptionKey {
  /// Google Cloud KMS encryption key. Format: projects/*/locations/*/keyRings/*/cryptoKeys/*
  final pulumi.Input<String> gcpKmsEncryptionKey;

  /// Creates a new [BackupPlanBackupConfigEncryptionKey].
  /// [gcpKmsEncryptionKey] Google Cloud KMS encryption key. Format: projects/*/locations/*/keyRings/*/cryptoKeys/*
  BackupPlanBackupConfigEncryptionKey({
    required this.gcpKmsEncryptionKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpKmsEncryptionKey': gcpKmsEncryptionKey,
    };
  }

  factory BackupPlanBackupConfigEncryptionKey.fromMap(Map<String, dynamic> map) {
    return BackupPlanBackupConfigEncryptionKey(
      gcpKmsEncryptionKey: (map['gcpKmsEncryptionKey'] as String).input(),
    );
  }
}

