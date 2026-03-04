// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionInstanceTemplateDiskSourceImageEncryptionKey {
  /// The self link of the encryption key that is stored in Google Cloud KMS
  final pulumi.Input<String> kmsKeySelfLink;

  /// The service account being used for the encryption
  /// request for the given KMS key. If absent, the Compute
  /// Engine default service account is used.
  final pulumi.Input<String> kmsKeyServiceAccount;

  /// Specifies a 256-bit customer-supplied encryption key, encoded in RFC 4648 base64 to either encrypt or decrypt this resource.  Only one of kms_key_self_link, rsa_encrypted_key and raw_key may be set.
  final pulumi.Input<String> rawKey;

  /// Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit customer-supplied encryption key to either encrypt or decrypt this resource.  Only one of kms_key_self_link, rsa_encrypted_key and raw_key may be set.
  final pulumi.Input<String> rsaEncryptedKey;

  /// Creates a new [GetRegionInstanceTemplateDiskSourceImageEncryptionKey].
  /// [kmsKeySelfLink] The self link of the encryption key that is stored in Google Cloud KMS
  /// [kmsKeyServiceAccount] The service account being used for the encryption
  /// [rawKey] Specifies a 256-bit customer-supplied encryption key, encoded in RFC 4648 base64 to either encrypt or decrypt this resource.  Only one of kms_key_self_link, rsa_encrypted_key and raw_key may be set.
  /// [rsaEncryptedKey] Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit customer-supplied encryption key to either encrypt or decrypt this resource.  Only one of kms_key_self_link, rsa_encrypted_key and raw_key may be set.
  GetRegionInstanceTemplateDiskSourceImageEncryptionKey({
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

  factory GetRegionInstanceTemplateDiskSourceImageEncryptionKey.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRegionInstanceTemplateDiskSourceImageEncryptionKey(
      kmsKeySelfLink: pulumi.Input.fromValue(map['kmsKeySelfLink'] as String),
      kmsKeyServiceAccount: pulumi.Input.fromValue(
        map['kmsKeyServiceAccount'] as String,
      ),
      rawKey: pulumi.Input.fromValue(map['rawKey'] as String),
      rsaEncryptedKey: pulumi.Input.fromValue(map['rsaEncryptedKey'] as String),
    );
  }
}
