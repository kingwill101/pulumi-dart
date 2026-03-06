// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Encryption message describes the details of the applied encryption.
class EncryptionVmmigrationV1alpha1 {
  /// The name of the encryption key that is stored in Google Cloud KMS.
  final pulumi.Input<String> kmsKey;

  /// Creates a new [EncryptionVmmigrationV1alpha1].
  /// [kmsKey] The name of the encryption key that is stored in Google Cloud KMS.
  const EncryptionVmmigrationV1alpha1({
    required this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKey': kmsKey,
    };
  }

  factory EncryptionVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return EncryptionVmmigrationV1alpha1(
      kmsKey: pulumi.Input.fromValue(map['kmsKey'] as String),
    );
  }
}

