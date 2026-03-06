// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a resource Id to source key vault.
class KeyVaultKeyReferenceSourceVault {
  /// Resource Id.
  final pulumi.Input<String>? id;

  /// Creates a new [KeyVaultKeyReferenceSourceVault].
  /// [id] Resource Id.
  const KeyVaultKeyReferenceSourceVault({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory KeyVaultKeyReferenceSourceVault.fromMap(Map<String, dynamic> map) {
    return KeyVaultKeyReferenceSourceVault(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

