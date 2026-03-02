// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceInstanceEncryptionKey {
  /// The self_link of the encryption key that is
  /// stored in Google Cloud KMS to encrypt the data on this instance.
  final pulumi.Input<String>? kmsKeySelfLink;
  /// The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.
  final pulumi.Input<String>? kmsKeyServiceAccount;
  /// The SHA256 hash of the customer's encryption key.
  final pulumi.Input<String>? sha256;

  /// Creates a new [InstanceInstanceEncryptionKey].
  /// [kmsKeySelfLink] The self_link of the encryption key that is
  /// [kmsKeyServiceAccount] The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.
  /// [sha256] The SHA256 hash of the customer's encryption key.
  InstanceInstanceEncryptionKey({
    this.kmsKeySelfLink,
    this.kmsKeyServiceAccount,
    this.sha256,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeySelfLink': ?kmsKeySelfLink,
      'kmsKeyServiceAccount': ?kmsKeyServiceAccount,
      'sha256': ?sha256,
    };
  }

  factory InstanceInstanceEncryptionKey.fromMap(Map<String, dynamic> map) {
    return InstanceInstanceEncryptionKey(
      kmsKeySelfLink: map['kmsKeySelfLink'] == null ? null : (map['kmsKeySelfLink'] as String).input(),
      kmsKeyServiceAccount: map['kmsKeyServiceAccount'] == null ? null : (map['kmsKeyServiceAccount'] as String).input(),
      sha256: map['sha256'] == null ? null : (map['sha256'] as String).input(),
    );
  }
}

