// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a resource Id to source key vault.
class KeyVaultKeyReferenceResponseSourceVault {
  /// Resource Id.
  final pulumi.Input<String?>? id;

  /// Creates a new [KeyVaultKeyReferenceResponseSourceVault].
  /// [id] Resource Id.
  const KeyVaultKeyReferenceResponseSourceVault({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory KeyVaultKeyReferenceResponseSourceVault.fromMap(Map<String, dynamic> map) {
    return KeyVaultKeyReferenceResponseSourceVault(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
