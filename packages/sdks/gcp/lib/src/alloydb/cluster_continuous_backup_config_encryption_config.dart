// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterContinuousBackupConfigEncryptionConfig {
  /// The fully-qualified resource name of the KMS key. Each Cloud KMS key is regionalized and has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME].
  final pulumi.Input<String>? kmsKeyName;

  /// Creates a new [ClusterContinuousBackupConfigEncryptionConfig].
  /// [kmsKeyName] The fully-qualified resource name of the KMS key. Each Cloud KMS key is regionalized and has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME].
  ClusterContinuousBackupConfigEncryptionConfig({this.kmsKeyName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kmsKeyName': ?kmsKeyName};
  }

  factory ClusterContinuousBackupConfigEncryptionConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterContinuousBackupConfigEncryptionConfig(
      kmsKeyName: (() {
        final guardedValue = map['kmsKeyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
