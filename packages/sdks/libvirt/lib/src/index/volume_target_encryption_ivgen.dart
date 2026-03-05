// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeTargetEncryptionIvgen {
  /// Specifies the hashing algorithm used for the initialization vector generation.
  final pulumi.Input<String> hash;
  /// Sets the name of the initialization vector generator for the encryption.
  final pulumi.Input<String> name;

  /// Creates a new [VolumeTargetEncryptionIvgen].
  /// [hash] Specifies the hashing algorithm used for the initialization vector generation.
  /// [name] Sets the name of the initialization vector generator for the encryption.
  VolumeTargetEncryptionIvgen({
    required this.hash,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hash': hash,
      'name': name,
    };
  }

  factory VolumeTargetEncryptionIvgen.fromMap(Map<String, dynamic> map) {
    return VolumeTargetEncryptionIvgen(
      hash: pulumi.Input.fromValue(map['hash'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

