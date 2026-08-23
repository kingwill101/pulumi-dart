// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Encryption Key value.
class EncryptionKeyResponse {
  /// The [KMS key name] with which the content of the Operation is encrypted. The expected format: `projects/*/locations/*/keyRings/*/cryptoKeys/*`. Will be empty string if google managed.
  final pulumi.Input<String> kmsKeyName;
  /// Type.
  final pulumi.Input<String> type;

  /// Creates a new [EncryptionKeyResponse].
  /// [kmsKeyName] The [KMS key name] with which the content of the Operation is encrypted. The expected format: `projects/*/locations/*/keyRings/*/cryptoKeys/*`. Will be empty string if google managed.
  /// [type] Type.
  const EncryptionKeyResponse({
    required this.kmsKeyName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
      'type': type,
    };
  }

  factory EncryptionKeyResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionKeyResponse(
      kmsKeyName: pulumi.Input.fromValue(map['kmsKeyName'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
