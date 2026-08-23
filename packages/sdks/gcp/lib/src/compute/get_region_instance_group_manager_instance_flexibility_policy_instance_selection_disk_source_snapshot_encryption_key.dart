// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskSourceSnapshotEncryptionKey {
  /// The self link of the encryption key that is stored in Google Cloud KMS. Only one of kms_key_self_link, rsaEncryptedKey and rawKey may be set.
  final pulumi.Input<String> kmsKeySelfLink;
  /// The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.
  final pulumi.Input<String> kmsKeyServiceAccount;
  /// Specifies a 256-bit customer-supplied encryption key, encoded in RFC 4648 base64 to either encrypt or decrypt this resource. Only one of kms_key_self_link, rsaEncryptedKey and rawKey may be set.
  final pulumi.Input<String> rawKey;
  /// Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit customer-supplied encryption key to either encrypt or decrypt this resource. Only one of kms_key_self_link, rsaEncryptedKey and rawKey may be set.
  final pulumi.Input<String> rsaEncryptedKey;

  /// Creates a new [GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskSourceSnapshotEncryptionKey].
  /// [kmsKeySelfLink] The self link of the encryption key that is stored in Google Cloud KMS. Only one of kms_key_self_link, rsaEncryptedKey and rawKey may be set.
  /// [kmsKeyServiceAccount] The service account being used for the encryption request for the given KMS key. If absent, the Compute Engine default service account is used.
  /// [rawKey] Specifies a 256-bit customer-supplied encryption key, encoded in RFC 4648 base64 to either encrypt or decrypt this resource. Only one of kms_key_self_link, rsaEncryptedKey and rawKey may be set.
  /// [rsaEncryptedKey] Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit customer-supplied encryption key to either encrypt or decrypt this resource. Only one of kms_key_self_link, rsaEncryptedKey and rawKey may be set.
  const GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskSourceSnapshotEncryptionKey({
    required this.kmsKeySelfLink,
    required this.kmsKeyServiceAccount,
    required this.rawKey,
    required this.rsaEncryptedKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeySelfLink': kmsKeySelfLink,
      'kmsKeyServiceAccount': kmsKeyServiceAccount,
      'rawKey': rawKey,
      'rsaEncryptedKey': rsaEncryptedKey,
    };
  }

  factory GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskSourceSnapshotEncryptionKey.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerInstanceFlexibilityPolicyInstanceSelectionDiskSourceSnapshotEncryptionKey(
      kmsKeySelfLink: pulumi.Input.fromValue(map['kmsKeySelfLink'] as String),
      kmsKeyServiceAccount: pulumi.Input.fromValue(map['kmsKeyServiceAccount'] as String),
      rawKey: pulumi.Input.fromValue(map['rawKey'] as String),
      rsaEncryptedKey: pulumi.Input.fromValue(map['rsaEncryptedKey'] as String),
    );
  }
}
