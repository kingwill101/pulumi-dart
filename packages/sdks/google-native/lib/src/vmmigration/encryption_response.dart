// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Encryption message describes the details of the applied encryption.
class EncryptionResponse {
  /// The name of the encryption key that is stored in Google Cloud KMS.
  final pulumi.Input<String> kmsKey;

  /// Creates a new [EncryptionResponse].
  /// [kmsKey] The name of the encryption key that is stored in Google Cloud KMS.
  EncryptionResponse({
    required this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKey': kmsKey,
    };
  }

  factory EncryptionResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionResponse(
      kmsKey: (map['kmsKey'] as String).input(),
    );
  }
}

