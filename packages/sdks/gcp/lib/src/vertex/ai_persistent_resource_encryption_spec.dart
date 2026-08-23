// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiPersistentResourceEncryptionSpec {
  /// Resource name of the Cloud KMS key used to protect the resource.
  /// The Cloud KMS key must be in the same region as the resource. It must have
  /// the format
  /// `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  final pulumi.Input<String> kmsKeyName;

  /// Creates a new [AiPersistentResourceEncryptionSpec].
  /// [kmsKeyName] Resource name of the Cloud KMS key used to protect the resource.
  const AiPersistentResourceEncryptionSpec({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
    };
  }

  factory AiPersistentResourceEncryptionSpec.fromMap(Map<String, dynamic> map) {
    return AiPersistentResourceEncryptionSpec(
      kmsKeyName: pulumi.Input.fromValue(map['kmsKeyName'] as String),
    );
  }
}
