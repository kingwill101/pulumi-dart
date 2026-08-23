// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CollectionEncryptionSpec {
  /// Resource name of the Cloud KMS key used to protect the resource.
  /// The Cloud KMS key must be in the same region as the resource. It must have
  /// the format
  /// `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  final pulumi.Input<String> cryptoKeyName;

  /// Creates a new [CollectionEncryptionSpec].
  /// [cryptoKeyName] Resource name of the Cloud KMS key used to protect the resource.
  const CollectionEncryptionSpec({
    required this.cryptoKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoKeyName': cryptoKeyName,
    };
  }

  factory CollectionEncryptionSpec.fromMap(Map<String, dynamic> map) {
    return CollectionEncryptionSpec(
      cryptoKeyName: pulumi.Input.fromValue(map['cryptoKeyName'] as String),
    );
  }
}
