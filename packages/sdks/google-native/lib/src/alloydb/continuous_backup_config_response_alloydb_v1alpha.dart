// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_config_response_alloydb_v1alpha.dart';

/// ContinuousBackupConfig describes the continuous backups recovery configurations of a cluster.
class ContinuousBackupConfigResponseAlloydbV1alpha {
  /// Whether ContinuousBackup is enabled.
  final pulumi.Input<bool> enabled;
  /// The encryption config can be specified to encrypt the backups with a customer-managed encryption key (CMEK). When this field is not specified, the backup will then use default encryption scheme to protect the user data.
  final pulumi.Input<EncryptionConfigResponseAlloydbV1alpha> encryptionConfig;
  /// The number of days that are eligible to restore from using PITR. To support the entire recovery window, backups and logs are retained for one day more than the recovery window. If not set, defaults to 14 days.
  final pulumi.Input<int> recoveryWindowDays;

  /// Creates a new [ContinuousBackupConfigResponseAlloydbV1alpha].
  /// [enabled] Whether ContinuousBackup is enabled.
  /// [encryptionConfig] The encryption config can be specified to encrypt the backups with a customer-managed encryption key (CMEK). When this field is not specified, the backup will then use default encryption scheme to protect the user data.
  /// [recoveryWindowDays] The number of days that are eligible to restore from using PITR. To support the entire recovery window, backups and logs are retained for one day more than the recovery window. If not set, defaults to 14 days.
  ContinuousBackupConfigResponseAlloydbV1alpha({
    required this.enabled,
    required this.encryptionConfig,
    required this.recoveryWindowDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'encryptionConfig': pulumi.Input.mapInputValue<EncryptionConfigResponseAlloydbV1alpha, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'recoveryWindowDays': recoveryWindowDays,
    };
  }

  factory ContinuousBackupConfigResponseAlloydbV1alpha.fromMap(Map<String, dynamic> map) {
    return ContinuousBackupConfigResponseAlloydbV1alpha(
      enabled: (map['enabled'] as bool).input(),
      encryptionConfig: (EncryptionConfigResponseAlloydbV1alpha.fromMap((map['encryptionConfig'] as Map).cast<String, dynamic>())).input(),
      recoveryWindowDays: (map['recoveryWindowDays'] as int).input(),
    );
  }
}

