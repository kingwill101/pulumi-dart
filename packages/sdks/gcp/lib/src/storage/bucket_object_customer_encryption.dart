// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketObjectCustomerEncryption {
  /// Encryption algorithm. Default: AES256
  final pulumi.Input<String>? encryptionAlgorithm;

  /// Base64 encoded Customer-Supplied Encryption Key.
  final pulumi.Input<String> encryptionKey;

  /// Creates a new [BucketObjectCustomerEncryption].
  /// [encryptionAlgorithm] Encryption algorithm. Default: AES256
  /// [encryptionKey] Base64 encoded Customer-Supplied Encryption Key.
  BucketObjectCustomerEncryption({
    this.encryptionAlgorithm,
    required this.encryptionKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionAlgorithm': ?encryptionAlgorithm,
      'encryptionKey': encryptionKey,
    };
  }

  factory BucketObjectCustomerEncryption.fromMap(Map<String, dynamic> map) {
    return BucketObjectCustomerEncryption(
      encryptionAlgorithm: (() {
        final guardedValue = map['encryptionAlgorithm'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      encryptionKey: pulumi.Input.fromValue(map['encryptionKey'] as String),
    );
  }
}
