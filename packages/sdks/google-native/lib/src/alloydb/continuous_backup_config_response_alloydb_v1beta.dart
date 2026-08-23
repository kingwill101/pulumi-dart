// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_config_response_alloydb_v1beta.dart';

/// ContinuousBackupConfig describes the continuous backups recovery configurations of a cluster.
class ContinuousBackupConfigResponseAlloydbV1beta {
  /// Whether ContinuousBackup is enabled.
  final pulumi.Input<bool> enabled;
  /// The encryption config can be specified to encrypt the backups with a customer-managed encryption key (CMEK). When this field is not specified, the backup will then use default encryption scheme to protect the user data.
  final pulumi.Input<EncryptionConfigResponseAlloydbV1beta> encryptionConfig;
  /// The number of days that are eligible to restore from using PITR. To support the entire recovery window, backups and logs are retained for one day more than the recovery window. If not set, defaults to 14 days.
  final pulumi.Input<int> recoveryWindowDays;

  /// Creates a new [ContinuousBackupConfigResponseAlloydbV1beta].
  /// [enabled] Whether ContinuousBackup is enabled.
  /// [encryptionConfig] The encryption config can be specified to encrypt the backups with a customer-managed encryption key (CMEK). When this field is not specified, the backup will then use default encryption scheme to protect the user data.
  /// [recoveryWindowDays] The number of days that are eligible to restore from using PITR. To support the entire recovery window, backups and logs are retained for one day more than the recovery window. If not set, defaults to 14 days.
  const ContinuousBackupConfigResponseAlloydbV1beta({
    required this.enabled,
    required this.encryptionConfig,
    required this.recoveryWindowDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'encryptionConfig': pulumi.Input.mapInputValue<EncryptionConfigResponseAlloydbV1beta, Map<String, dynamic>>(encryptionConfig, (value) => value.toMap()),
      'recoveryWindowDays': recoveryWindowDays,
    };
  }

  factory ContinuousBackupConfigResponseAlloydbV1beta.fromMap(Map<String, dynamic> map) {
    return ContinuousBackupConfigResponseAlloydbV1beta(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      encryptionConfig: pulumi.Input.fromValue(EncryptionConfigResponseAlloydbV1beta.fromMap((map['encryptionConfig']! as Map).cast<String, dynamic>())),
      recoveryWindowDays: pulumi.Input.fromValue(map['recoveryWindowDays'] as int),
    );
  }
}
