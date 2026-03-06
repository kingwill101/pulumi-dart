// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketObjectCustomerEncryption {
  /// The encryption algorithm. Default: AES256
  final pulumi.Input<String> encryptionAlgorithm;
  /// Base64 encoded customer supplied encryption key.
  final pulumi.Input<String> encryptionKey;

  /// Creates a new [GetBucketObjectCustomerEncryption].
  /// [encryptionAlgorithm] The encryption algorithm. Default: AES256
  /// [encryptionKey] Base64 encoded customer supplied encryption key.
  const GetBucketObjectCustomerEncryption({
    required this.encryptionAlgorithm,
    required this.encryptionKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionAlgorithm': encryptionAlgorithm,
      'encryptionKey': encryptionKey,
    };
  }

  factory GetBucketObjectCustomerEncryption.fromMap(Map<String, dynamic> map) {
    return GetBucketObjectCustomerEncryption(
      encryptionAlgorithm: pulumi.Input.fromValue(map['encryptionAlgorithm'] as String),
      encryptionKey: pulumi.Input.fromValue(map['encryptionKey'] as String),
    );
  }
}

