// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkstationConfigEncryptionKey {
  /// The name of the Google Cloud KMS encryption key.
  final pulumi.Input<String> kmsKey;
  /// The service account to use with the specified KMS key.
  final pulumi.Input<String> kmsKeyServiceAccount;

  /// Creates a new [WorkstationConfigEncryptionKey].
  /// [kmsKey] The name of the Google Cloud KMS encryption key.
  /// [kmsKeyServiceAccount] The service account to use with the specified KMS key.
  const WorkstationConfigEncryptionKey({
    required this.kmsKey,
    required this.kmsKeyServiceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKey': kmsKey,
      'kmsKeyServiceAccount': kmsKeyServiceAccount,
    };
  }

  factory WorkstationConfigEncryptionKey.fromMap(Map<String, dynamic> map) {
    return WorkstationConfigEncryptionKey(
      kmsKey: pulumi.Input.fromValue(map['kmsKey'] as String),
      kmsKeyServiceAccount: pulumi.Input.fromValue(map['kmsKeyServiceAccount'] as String),
    );
  }
}
