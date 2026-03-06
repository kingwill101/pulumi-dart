// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolTargetEncryptionCipher {
  /// Specifies the hash algorithm used with the encryption cipher.
  final pulumi.Input<String> hash;
  /// Defines the mode for the encryption cipher of the storage volume.
  final pulumi.Input<String> mode;
  /// Sets the name of the encryption cipher for the storage volume.
  final pulumi.Input<String> name;
  /// Sets the size of the encryption cipher for the storage volume.
  final pulumi.Input<double> size;

  /// Creates a new [PoolTargetEncryptionCipher].
  /// [hash] Specifies the hash algorithm used with the encryption cipher.
  /// [mode] Defines the mode for the encryption cipher of the storage volume.
  /// [name] Sets the name of the encryption cipher for the storage volume.
  /// [size] Sets the size of the encryption cipher for the storage volume.
  const PoolTargetEncryptionCipher({
    required this.hash,
    required this.mode,
    required this.name,
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hash': hash,
      'mode': mode,
      'name': name,
      'size': size,
    };
  }

  factory PoolTargetEncryptionCipher.fromMap(Map<String, dynamic> map) {
    return PoolTargetEncryptionCipher(
      hash: pulumi.Input.fromValue(map['hash'] as String),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      size: pulumi.Input.fromValue(map['size'] as double),
    );
  }
}

