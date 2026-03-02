// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CaPoolEncryptionSpec {
  /// The resource name for an existing Cloud KMS key in the format
  /// `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  final pulumi.Input<String>? cloudKmsKey;

  /// Creates a new [CaPoolEncryptionSpec].
  /// [cloudKmsKey] The resource name for an existing Cloud KMS key in the format
  CaPoolEncryptionSpec({
    this.cloudKmsKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudKmsKey': ?cloudKmsKey,
    };
  }

  factory CaPoolEncryptionSpec.fromMap(Map<String, dynamic> map) {
    return CaPoolEncryptionSpec(
      cloudKmsKey: map['cloudKmsKey'] == null ? null : (map['cloudKmsKey']! as String).input(),
    );
  }
}

