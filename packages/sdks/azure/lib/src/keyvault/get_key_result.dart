// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getKey.
class GetKeyResult {
  /// The EC Curve name of this Key Vault Key.
  final String? curve;
  /// The RSA public exponent of this Key Vault Key.
  final String? e;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A list of JSON web key operations assigned to this Key Vault Key
  final List<String>? keyOpts;
  /// Specifies the Size of this Key Vault Key.
  final int? keySize;
  /// Specifies the Key Type of this Key Vault Key
  final String? keyType;
  final String? keyVaultId;
  /// The RSA modulus of this Key Vault Key.
  final String? n;
  final String? name;
  /// The OpenSSH encoded public key of this Key Vault Key.
  final String? publicKeyOpenssh;
  /// The PEM encoded public key of this Key Vault Key.
  final String? publicKeyPem;
  /// The (Versioned) ID for this Key Vault Key. This property points to a specific version of a Key Vault Key, as such using this won't auto-rotate values if used in other Azure Services.
  final String? resourceId;
  /// The Versionless ID of the Key Vault Key. This property allows other Azure Services (that support it) to auto-rotate their value when the Key Vault Key is updated.
  final String? resourceVersionlessId;
  /// A mapping of tags assigned to this Key Vault Key.
  final Map<String, String>? tags;
  /// The current version of the Key Vault Key.
  final String? version;
  /// The Base ID of the Key Vault Key.
  final String? versionlessId;
  /// The EC X component of this Key Vault Key.
  final String? x;
  /// The EC Y component of this Key Vault Key.
  final String? y;

  /// Creates a new [GetKeyResult].
  /// [curve] The EC Curve name of this Key Vault Key.
  /// [e] The RSA public exponent of this Key Vault Key.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyOpts] A list of JSON web key operations assigned to this Key Vault Key
  /// [keySize] Specifies the Size of this Key Vault Key.
  /// [keyType] Specifies the Key Type of this Key Vault Key
  /// [keyVaultId] Optional.
  /// [n] The RSA modulus of this Key Vault Key.
  /// [name] Optional.
  /// [publicKeyOpenssh] The OpenSSH encoded public key of this Key Vault Key.
  /// [publicKeyPem] The PEM encoded public key of this Key Vault Key.
  /// [resourceId] The (Versioned) ID for this Key Vault Key. This property points to a specific version of a Key Vault Key, as such using this won't auto-rotate values if used in other Azure Services.
  /// [resourceVersionlessId] The Versionless ID of the Key Vault Key. This property allows other Azure Services (that support it) to auto-rotate their value when the Key Vault Key is updated.
  /// [tags] A mapping of tags assigned to this Key Vault Key.
  /// [version] The current version of the Key Vault Key.
  /// [versionlessId] The Base ID of the Key Vault Key.
  /// [x] The EC X component of this Key Vault Key.
  /// [y] The EC Y component of this Key Vault Key.
  const GetKeyResult({
    this.curve,
    this.e,
    this.id,
    this.keyOpts,
    this.keySize,
    this.keyType,
    this.keyVaultId,
    this.n,
    this.name,
    this.publicKeyOpenssh,
    this.publicKeyPem,
    this.resourceId,
    this.resourceVersionlessId,
    this.tags,
    this.version,
    this.versionlessId,
    this.x,
    this.y,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'curve': ?curve,
      'e': ?e,
      'id': ?id,
      'keyOpts': ?keyOpts,
      'keySize': ?keySize,
      'keyType': ?keyType,
      'keyVaultId': ?keyVaultId,
      'n': ?n,
      'name': ?name,
      'publicKeyOpenssh': ?publicKeyOpenssh,
      'publicKeyPem': ?publicKeyPem,
      'resourceId': ?resourceId,
      'resourceVersionlessId': ?resourceVersionlessId,
      'tags': ?tags,
      'version': ?version,
      'versionlessId': ?versionlessId,
      'x': ?x,
      'y': ?y,
    };
  }

  factory GetKeyResult.fromMap(Map<String, dynamic> map) {
    return GetKeyResult(
      curve: (() { final guardedValue = map['curve']; if (guardedValue == null) return null; return guardedValue as String; })(),
      e: (() { final guardedValue = map['e']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyOpts: (() { final guardedValue = map['keyOpts']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      keySize: (() { final guardedValue = map['keySize']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      keyType: (() { final guardedValue = map['keyType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyVaultId: (() { final guardedValue = map['keyVaultId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      n: (() { final guardedValue = map['n']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicKeyOpenssh: (() { final guardedValue = map['publicKeyOpenssh']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicKeyPem: (() { final guardedValue = map['publicKeyPem']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceVersionlessId: (() { final guardedValue = map['resourceVersionlessId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionlessId: (() { final guardedValue = map['versionlessId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      x: (() { final guardedValue = map['x']; if (guardedValue == null) return null; return guardedValue as String; })(),
      y: (() { final guardedValue = map['y']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
