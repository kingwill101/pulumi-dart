// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceTemplateDiskDiskEncryptionKey {
  /// The self link of the encryption key that is stored in Google Cloud KMS
  final pulumi.Input<String> kmsKeySelfLink;
  /// The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.
  final pulumi.Input<String> kmsKeyServiceAccount;

  /// Creates a new [GetInstanceTemplateDiskDiskEncryptionKey].
  /// [kmsKeySelfLink] The self link of the encryption key that is stored in Google Cloud KMS
  /// [kmsKeyServiceAccount] The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.
  const GetInstanceTemplateDiskDiskEncryptionKey({
    required this.kmsKeySelfLink,
    required this.kmsKeyServiceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeySelfLink': kmsKeySelfLink,
      'kmsKeyServiceAccount': kmsKeyServiceAccount,
    };
  }

  factory GetInstanceTemplateDiskDiskEncryptionKey.fromMap(Map<String, dynamic> map) {
    return GetInstanceTemplateDiskDiskEncryptionKey(
      kmsKeySelfLink: pulumi.Input.fromValue(map['kmsKeySelfLink'] as String),
      kmsKeyServiceAccount: pulumi.Input.fromValue(map['kmsKeyServiceAccount'] as String),
    );
  }
}
