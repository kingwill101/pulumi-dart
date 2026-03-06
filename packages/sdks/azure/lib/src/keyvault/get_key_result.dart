// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getKey.
class GetKeyResult {
  /// The EC Curve name of this Key Vault Key.
  final String curve;
  /// The RSA public exponent of this Key Vault Key.
  final String e;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of JSON web key operations assigned to this Key Vault Key
  final List<String> keyOpts;
  /// Specifies the Size of this Key Vault Key.
  final int keySize;
  /// Specifies the Key Type of this Key Vault Key
  final String keyType;
  final String keyVaultId;
  /// The RSA modulus of this Key Vault Key.
  final String n;
  final String name;
  /// The OpenSSH encoded public key of this Key Vault Key.
  final String publicKeyOpenssh;
  /// The PEM encoded public key of this Key Vault Key.
  final String publicKeyPem;
  /// The (Versioned) ID for this Key Vault Key. This property points to a specific version of a Key Vault Key, as such using this won't auto-rotate values if used in other Azure Services.
  final String resourceId;
  /// The Versionless ID of the Key Vault Key. This property allows other Azure Services (that support it) to auto-rotate their value when the Key Vault Key is updated.
  final String resourceVersionlessId;
  /// A mapping of tags assigned to this Key Vault Key.
  final Map<String, String> tags;
  /// The current version of the Key Vault Key.
  final String version;
  /// The Base ID of the Key Vault Key.
  final String versionlessId;
  /// The EC X component of this Key Vault Key.
  final String x;
  /// The EC Y component of this Key Vault Key.
  final String y;

  /// Creates a new [GetKeyResult].
  /// [curve] The EC Curve name of this Key Vault Key.
  /// [e] The RSA public exponent of this Key Vault Key.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyOpts] A list of JSON web key operations assigned to this Key Vault Key
  /// [keySize] Specifies the Size of this Key Vault Key.
  /// [keyType] Specifies the Key Type of this Key Vault Key
  /// [keyVaultId] Required.
  /// [n] The RSA modulus of this Key Vault Key.
  /// [name] Required.
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
    required this.curve,
    required this.e,
    required this.id,
    required this.keyOpts,
    required this.keySize,
    required this.keyType,
    required this.keyVaultId,
    required this.n,
    required this.name,
    required this.publicKeyOpenssh,
    required this.publicKeyPem,
    required this.resourceId,
    required this.resourceVersionlessId,
    required this.tags,
    required this.version,
    required this.versionlessId,
    required this.x,
    required this.y,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'curve': curve,
      'e': e,
      'id': id,
      'keyOpts': keyOpts,
      'keySize': keySize,
      'keyType': keyType,
      'keyVaultId': keyVaultId,
      'n': n,
      'name': name,
      'publicKeyOpenssh': publicKeyOpenssh,
      'publicKeyPem': publicKeyPem,
      'resourceId': resourceId,
      'resourceVersionlessId': resourceVersionlessId,
      'tags': tags,
      'version': version,
      'versionlessId': versionlessId,
      'x': x,
      'y': y,
    };
  }

  factory GetKeyResult.fromMap(Map<String, dynamic> map) {
    return GetKeyResult(
      curve: map['curve'] as String,
      e: map['e'] as String,
      id: map['id'] as String,
      keyOpts: (map['keyOpts'] as List).cast<String>(),
      keySize: map['keySize'] as int,
      keyType: map['keyType'] as String,
      keyVaultId: map['keyVaultId'] as String,
      n: map['n'] as String,
      name: map['name'] as String,
      publicKeyOpenssh: map['publicKeyOpenssh'] as String,
      publicKeyPem: map['publicKeyPem'] as String,
      resourceId: map['resourceId'] as String,
      resourceVersionlessId: map['resourceVersionlessId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      version: map['version'] as String,
      versionlessId: map['versionlessId'] as String,
      x: map['x'] as String,
      y: map['y'] as String,
    );
  }
}

