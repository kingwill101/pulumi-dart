// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_rotation_policy.dart';

/// Input properties used for looking up and filtering Key resources.
class KeyState {
  /// Specifies the curve to use when creating an `EC` key. Possible values are `P-256`, `P-256K`, `P-384`, and `P-521`. This field will be required in a future release if `key_type` is `EC` or `EC-HSM`. The API will default to `P-256` if nothing is specified. Changing this forces a new resource to be created.
  final pulumi.Input<String>? curve;
  /// The RSA public exponent of this Key Vault Key.
  final pulumi.Input<String>? e;
  /// Expiration UTC datetime (Y-m-d'T'H:M:S'Z').
  ///
  /// > **Note:** Removing this field from the config forces a new resource to be created.
  final pulumi.Input<String>? expirationDate;
  /// A list of JSON web key operations. Possible values include: `decrypt`, `encrypt`, `sign`, `unwrapKey`, `verify` and `wrapKey`. Please note these values are case sensitive.
  final pulumi.Input<List<String>>? keyOpts;
  /// Specifies the Size of the RSA key to create in bytes. For example, 1024 or 2048. *Note*: This field is required if `key_type` is `RSA` or `RSA-HSM`. Changing this forces a new resource to be created.
  final pulumi.Input<int>? keySize;
  /// Specifies the Key Type to use for this Key Vault Key. Possible values are `EC` (Elliptic Curve), `EC-HSM`, `RSA` and `RSA-HSM`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? keyType;
  /// The ID of the Key Vault where the Key should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? keyVaultId;
  /// The RSA modulus of this Key Vault Key.
  final pulumi.Input<String>? n;
  /// Specifies the name of the Key Vault Key. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Key not usable before the provided UTC datetime (Y-m-d'T'H:M:S'Z').
  ///
  /// > **Note:** Once `expiration_date` is set, it's not possible to unset the key even if it is deleted & recreated as underlying Azure API uses the restore of the purged key.
  final pulumi.Input<String>? notBeforeDate;
  /// The OpenSSH encoded public key of this Key Vault Key.
  final pulumi.Input<String>? publicKeyOpenssh;
  /// The PEM encoded public key of this Key Vault Key.
  final pulumi.Input<String>? publicKeyPem;
  /// The (Versioned) ID for this Key Vault Key. This property points to a specific version of a Key Vault Key, as such using this won't auto-rotate values if used in other Azure Services.
  final pulumi.Input<String>? resourceId;
  /// The Versionless ID of the Key Vault Key. This property allows other Azure Services (that support it) to auto-rotate their value when the Key Vault Key is updated.
  final pulumi.Input<String>? resourceVersionlessId;
  /// A `rotation_policy` block as defined below.
  final pulumi.Input<KeyRotationPolicy>? rotationPolicy;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The current version of the Key Vault Key.
  final pulumi.Input<String>? version;
  /// The Base ID of the Key Vault Key.
  final pulumi.Input<String>? versionlessId;
  /// The EC X component of this Key Vault Key.
  final pulumi.Input<String>? x;
  /// The EC Y component of this Key Vault Key.
  final pulumi.Input<String>? y;

  /// Creates a new [KeyState].
  /// [curve] Specifies the curve to use when creating an `EC` key. Possible values are `P-256`, `P-256K`, `P-384`, and `P-521`. This field will be required in a future release if `key_type` is `EC` or `EC-HSM`. The API will default to `P-256` if nothing is specified. Changing this forces a new resource to be created.
  /// [e] The RSA public exponent of this Key Vault Key.
  /// [expirationDate] Expiration UTC datetime (Y-m-d'T'H:M:S'Z').
  /// [keyOpts] A list of JSON web key operations. Possible values include: `decrypt`, `encrypt`, `sign`, `unwrapKey`, `verify` and `wrapKey`. Please note these values are case sensitive.
  /// [keySize] Specifies the Size of the RSA key to create in bytes. For example, 1024 or 2048. *Note*: This field is required if `key_type` is `RSA` or `RSA-HSM`. Changing this forces a new resource to be created.
  /// [keyType] Specifies the Key Type to use for this Key Vault Key. Possible values are `EC` (Elliptic Curve), `EC-HSM`, `RSA` and `RSA-HSM`. Changing this forces a new resource to be created.
  /// [keyVaultId] The ID of the Key Vault where the Key should be created. Changing this forces a new resource to be created.
  /// [n] The RSA modulus of this Key Vault Key.
  /// [name] Specifies the name of the Key Vault Key. Changing this forces a new resource to be created.
  /// [notBeforeDate] Key not usable before the provided UTC datetime (Y-m-d'T'H:M:S'Z').
  /// [publicKeyOpenssh] The OpenSSH encoded public key of this Key Vault Key.
  /// [publicKeyPem] The PEM encoded public key of this Key Vault Key.
  /// [resourceId] The (Versioned) ID for this Key Vault Key. This property points to a specific version of a Key Vault Key, as such using this won't auto-rotate values if used in other Azure Services.
  /// [resourceVersionlessId] The Versionless ID of the Key Vault Key. This property allows other Azure Services (that support it) to auto-rotate their value when the Key Vault Key is updated.
  /// [rotationPolicy] A `rotation_policy` block as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  /// [version] The current version of the Key Vault Key.
  /// [versionlessId] The Base ID of the Key Vault Key.
  /// [x] The EC X component of this Key Vault Key.
  /// [y] The EC Y component of this Key Vault Key.
  KeyState({
    pulumi.Output<String>? curve,
    pulumi.Output<String>? e,
    pulumi.Output<String>? expirationDate,
    pulumi.Output<List<String>>? keyOpts,
    pulumi.Output<int>? keySize,
    pulumi.Output<String>? keyType,
    pulumi.Output<String>? keyVaultId,
    pulumi.Output<String>? n,
    pulumi.Output<String>? name,
    pulumi.Output<String>? notBeforeDate,
    pulumi.Output<String>? publicKeyOpenssh,
    pulumi.Output<String>? publicKeyPem,
    pulumi.Output<String>? resourceId,
    pulumi.Output<String>? resourceVersionlessId,
    pulumi.Output<KeyRotationPolicy>? rotationPolicy,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? version,
    pulumi.Output<String>? versionlessId,
    pulumi.Output<String>? x,
    pulumi.Output<String>? y,
  }) :
      curve = pulumi.Input.asOptionalInput<String>(curve),
      e = pulumi.Input.asOptionalInput<String>(e),
      expirationDate = pulumi.Input.asOptionalInput<String>(expirationDate),
      keyOpts = pulumi.Input.asOptionalInput<List<String>>(keyOpts),
      keySize = pulumi.Input.asOptionalInput<int>(keySize),
      keyType = pulumi.Input.asOptionalInput<String>(keyType),
      keyVaultId = pulumi.Input.asOptionalInput<String>(keyVaultId),
      n = pulumi.Input.asOptionalInput<String>(n),
      name = pulumi.Input.asOptionalInput<String>(name),
      notBeforeDate = pulumi.Input.asOptionalInput<String>(notBeforeDate),
      publicKeyOpenssh = pulumi.Input.asOptionalInput<String>(publicKeyOpenssh),
      publicKeyPem = pulumi.Input.asOptionalInput<String>(publicKeyPem),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId),
      resourceVersionlessId = pulumi.Input.asOptionalInput<String>(resourceVersionlessId),
      rotationPolicy = pulumi.Input.asOptionalInput<KeyRotationPolicy>(rotationPolicy),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      version = pulumi.Input.asOptionalInput<String>(version),
      versionlessId = pulumi.Input.asOptionalInput<String>(versionlessId),
      x = pulumi.Input.asOptionalInput<String>(x),
      y = pulumi.Input.asOptionalInput<String>(y);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'curve': ?curve,
      'e': ?e,
      'expirationDate': ?expirationDate,
      'keyOpts': ?keyOpts,
      'keySize': ?keySize,
      'keyType': ?keyType,
      'keyVaultId': ?keyVaultId,
      'n': ?n,
      'name': ?name,
      'notBeforeDate': ?notBeforeDate,
      'publicKeyOpenssh': ?publicKeyOpenssh,
      'publicKeyPem': ?publicKeyPem,
      'resourceId': ?resourceId,
      'resourceVersionlessId': ?resourceVersionlessId,
      'rotationPolicy': ?pulumi.Input.mapOptionalInputValue<KeyRotationPolicy, Map<String, dynamic>>(rotationPolicy, (value) => value.toMap()),
      'tags': ?tags,
      'version': ?version,
      'versionlessId': ?versionlessId,
      'x': ?x,
      'y': ?y,
    };
  }

  factory KeyState.fromMap(Map<String, dynamic> map) {
    return KeyState(
      curve: map['curve'] == null ? null : pulumi.Output.create<String>(map['curve'] as String),
      e: map['e'] == null ? null : pulumi.Output.create<String>(map['e'] as String),
      expirationDate: map['expirationDate'] == null ? null : pulumi.Output.create<String>(map['expirationDate'] as String),
      keyOpts: map['keyOpts'] == null ? null : pulumi.Output.create<List<String>>((map['keyOpts'] as List).cast<String>()),
      keySize: map['keySize'] == null ? null : pulumi.Output.create<int>(map['keySize'] as int),
      keyType: map['keyType'] == null ? null : pulumi.Output.create<String>(map['keyType'] as String),
      keyVaultId: map['keyVaultId'] == null ? null : pulumi.Output.create<String>(map['keyVaultId'] as String),
      n: map['n'] == null ? null : pulumi.Output.create<String>(map['n'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notBeforeDate: map['notBeforeDate'] == null ? null : pulumi.Output.create<String>(map['notBeforeDate'] as String),
      publicKeyOpenssh: map['publicKeyOpenssh'] == null ? null : pulumi.Output.create<String>(map['publicKeyOpenssh'] as String),
      publicKeyPem: map['publicKeyPem'] == null ? null : pulumi.Output.create<String>(map['publicKeyPem'] as String),
      resourceId: map['resourceId'] == null ? null : pulumi.Output.create<String>(map['resourceId'] as String),
      resourceVersionlessId: map['resourceVersionlessId'] == null ? null : pulumi.Output.create<String>(map['resourceVersionlessId'] as String),
      rotationPolicy: map['rotationPolicy'] == null ? null : pulumi.Output.create<KeyRotationPolicy>(KeyRotationPolicy.fromMap((map['rotationPolicy'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
      versionlessId: map['versionlessId'] == null ? null : pulumi.Output.create<String>(map['versionlessId'] as String),
      x: map['x'] == null ? null : pulumi.Output.create<String>(map['x'] as String),
      y: map['y'] == null ? null : pulumi.Output.create<String>(map['y'] as String),
    );
  }
}

