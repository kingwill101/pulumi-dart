// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceInstanceEncryptionKey {
  /// The self link of the encryption key that is stored in Google Cloud KMS.
  final pulumi.Input<String> kmsKeySelfLink;
  /// The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.
  final pulumi.Input<String> kmsKeyServiceAccount;
  /// The SHA256 hash of the customer's encryption key.
  final pulumi.Input<String> sha256;

  /// Creates a new [GetInstanceInstanceEncryptionKey].
  /// [kmsKeySelfLink] The self link of the encryption key that is stored in Google Cloud KMS.
  /// [kmsKeyServiceAccount] The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.
  /// [sha256] The SHA256 hash of the customer's encryption key.
  GetInstanceInstanceEncryptionKey({
    required this.kmsKeySelfLink,
    required this.kmsKeyServiceAccount,
    required this.sha256,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeySelfLink': kmsKeySelfLink,
      'kmsKeyServiceAccount': kmsKeyServiceAccount,
      'sha256': sha256,
    };
  }

  factory GetInstanceInstanceEncryptionKey.fromMap(Map<String, dynamic> map) {
    return GetInstanceInstanceEncryptionKey(
      kmsKeySelfLink: pulumi.Input.fromValue(map['kmsKeySelfLink'] as String),
      kmsKeyServiceAccount: pulumi.Input.fromValue(map['kmsKeyServiceAccount'] as String),
      sha256: pulumi.Input.fromValue(map['sha256'] as String),
    );
  }
}

