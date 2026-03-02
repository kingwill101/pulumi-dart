// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a resource Id to source key vault.
class KeyVaultKeyReferenceResponseSourceVault {
  /// Resource Id.
  final pulumi.Input<String>? id;

  /// Creates a new [KeyVaultKeyReferenceResponseSourceVault].
  /// [id] Resource Id.
  KeyVaultKeyReferenceResponseSourceVault({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory KeyVaultKeyReferenceResponseSourceVault.fromMap(Map<String, dynamic> map) {
    return KeyVaultKeyReferenceResponseSourceVault(
      id: map['id'] == null ? null : (map['id'] as String).input(),
    );
  }
}

