// ignore_for_file: unused_element, unnecessary_cast


class VolumeTargetEncryptionIvgen {
  /// Specifies the hashing algorithm used for the initialization vector generation.
  final String hash;
  /// Sets the name of the initialization vector generator for the encryption.
  final String name;

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
      hash: map['hash'] as String,
      name: map['name'] as String,
    );
  }
}

