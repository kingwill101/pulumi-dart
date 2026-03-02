// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketObjectContentCustomerEncryption {
  /// The encryption algorithm. Default: AES256
  final pulumi.Input<String> encryptionAlgorithm;
  /// Base64 encoded customer supplied encryption key.
  final pulumi.Input<String> encryptionKey;

  /// Creates a new [GetBucketObjectContentCustomerEncryption].
  /// [encryptionAlgorithm] The encryption algorithm. Default: AES256
  /// [encryptionKey] Base64 encoded customer supplied encryption key.
  GetBucketObjectContentCustomerEncryption({
    required this.encryptionAlgorithm,
    required this.encryptionKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionAlgorithm': encryptionAlgorithm,
      'encryptionKey': encryptionKey,
    };
  }

  factory GetBucketObjectContentCustomerEncryption.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectContentCustomerEncryption(
      encryptionAlgorithm: (map['encryptionAlgorithm'] as String).input(),
      encryptionKey: (map['encryptionKey'] as String).input(),
    );
  }
}

