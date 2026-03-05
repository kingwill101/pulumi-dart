// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defined a customer managed encryption key that will be used to encrypt Backup artifacts.
class EncryptionKeyResponse {
  /// Optional. Google Cloud KMS encryption key. Format: `projects/*/locations/*/keyRings/*/cryptoKeys/*`
  final pulumi.Input<String> gcpKmsEncryptionKey;

  /// Creates a new [EncryptionKeyResponse].
  /// [gcpKmsEncryptionKey] Optional. Google Cloud KMS encryption key. Format: `projects/*/locations/*/keyRings/*/cryptoKeys/*`
  EncryptionKeyResponse({
    required this.gcpKmsEncryptionKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpKmsEncryptionKey': gcpKmsEncryptionKey,
    };
  }

  factory EncryptionKeyResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionKeyResponse(
      gcpKmsEncryptionKey: pulumi.Input.fromValue(map['gcpKmsEncryptionKey'] as String),
    );
  }
}

