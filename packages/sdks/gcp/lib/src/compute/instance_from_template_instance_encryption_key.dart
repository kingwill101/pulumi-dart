// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceFromTemplateInstanceEncryptionKey {
  /// The self link of the encryption key that is stored in Google Cloud KMS.
  final pulumi.Input<String>? kmsKeySelfLink;
  /// The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.
  final pulumi.Input<String>? kmsKeyServiceAccount;
  /// The SHA256 hash of the customer's encryption key.
  final pulumi.Input<String>? sha256;

  /// Creates a new [InstanceFromTemplateInstanceEncryptionKey].
  /// [kmsKeySelfLink] The self link of the encryption key that is stored in Google Cloud KMS.
  /// [kmsKeyServiceAccount] The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.
  /// [sha256] The SHA256 hash of the customer's encryption key.
  InstanceFromTemplateInstanceEncryptionKey({
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

  factory InstanceFromTemplateInstanceEncryptionKey.fromMap(Map<String, dynamic> map) {
    return InstanceFromTemplateInstanceEncryptionKey(
      kmsKeySelfLink: map['kmsKeySelfLink'] == null ? null : (map['kmsKeySelfLink']! as String).input(),
      kmsKeyServiceAccount: map['kmsKeyServiceAccount'] == null ? null : (map['kmsKeyServiceAccount']! as String).input(),
      sha256: map['sha256'] == null ? null : (map['sha256']! as String).input(),
    );
  }
}

