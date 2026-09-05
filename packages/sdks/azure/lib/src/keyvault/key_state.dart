// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_release_policy.dart';
import 'key_rotation_policy.dart';

/// Input properties used for looking up and filtering Key resources.
class KeyState {
  /// Specifies the curve to use when creating an `EC` key. Possible values are `P-256`, `P-256K`, `P-384`, and `P-521`. This field will be required in a future release if `keyType` is `EC` or `EC-HSM`. The API will default to `P-256` if nothing is specified. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? curve;
  /// The RSA public exponent of this Key Vault Key.
  final pulumi.Input<String?>? e;
  /// Expiration UTC datetime (Y-m-d'T'H:M:S'Z').
  ///
  /// &gt; **Note:** Removing this field from the config forces a new resource to be created.
  final pulumi.Input<String?>? expirationDate;
  /// A list of JSON web key operations. Possible values include: `decrypt`, `encrypt`, `sign`, `unwrapKey`, `verify` and `wrapKey`. Please note these values are case-sensitive.
  final pulumi.Input<List<String>?>? keyOpts;
  /// Specifies the Size of the RSA key to create in bytes. For example, 1024 or 2048. *Note*: This field is required if `keyType` is `RSA` or `RSA-HSM`. Changing this forces a new resource to be created.
  final pulumi.Input<int?>? keySize;
  /// Specifies the Key Type to use for this Key Vault Key. Possible values are `EC` (Elliptic Curve), `EC-HSM`, `RSA` and `RSA-HSM`. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? keyType;
  /// The ID of the Key Vault where the Key should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? keyVaultId;
  /// The RSA modulus of this Key Vault Key.
  final pulumi.Input<String?>? n;
  /// Specifies the name of the Key Vault Key. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// Key not usable before the provided UTC datetime (Y-m-d'T'H:M:S'Z').
  ///
  /// &gt; **Note:** Once `expirationDate` is set, it's not possible to unset the key even if it is deleted & recreated as underlying Azure API uses the restore of the purged key.
  final pulumi.Input<String?>? notBeforeDate;
  /// The OpenSSH encoded public key of this Key Vault Key.
  final pulumi.Input<String?>? publicKeyOpenssh;
  /// The PEM encoded public key of this Key Vault Key.
  final pulumi.Input<String?>? publicKeyPem;
  /// A `releasePolicy` block as defined below. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** When `releasePolicy` is set, the key is automatically set as exportable by the provider as this is an API requirement.
  final pulumi.Input<KeyReleasePolicy?>? releasePolicy;
  /// The (Versioned) ID for this Key Vault Key. This property points to a specific version of a Key Vault Key, as such using this won't auto-rotate values if used in other Azure Services.
  final pulumi.Input<String?>? resourceId;
  /// The Versionless ID of the Key Vault Key. This property allows other Azure Services (that support it) to auto-rotate their value when the Key Vault Key is updated.
  final pulumi.Input<String?>? resourceVersionlessId;
  /// A `rotationPolicy` block as defined below.
  final pulumi.Input<KeyRotationPolicy?>? rotationPolicy;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The current version of the Key Vault Key.
  final pulumi.Input<String?>? version;
  /// The Base ID of the Key Vault Key.
  final pulumi.Input<String?>? versionlessId;
  /// The EC X component of this Key Vault Key.
  final pulumi.Input<String?>? x;
  /// The EC Y component of this Key Vault Key.
  final pulumi.Input<String?>? y;

  /// Creates a new [KeyState].
  /// [curve] Specifies the curve to use when creating an `EC` key. Possible values are `P-256`, `P-256K`, `P-384`, and `P-521`. This field will be required in a future release if `keyType` is `EC` or `EC-HSM`. The API will default to `P-256` if nothing is specified. Changing this forces a new resource to be created.
  /// [e] The RSA public exponent of this Key Vault Key.
  /// [expirationDate] Expiration UTC datetime (Y-m-d'T'H:M:S'Z').
  /// [keyOpts] A list of JSON web key operations. Possible values include: `decrypt`, `encrypt`, `sign`, `unwrapKey`, `verify` and `wrapKey`. Please note these values are case-sensitive.
  /// [keySize] Specifies the Size of the RSA key to create in bytes. For example, 1024 or 2048. *Note*: This field is required if `keyType` is `RSA` or `RSA-HSM`. Changing this forces a new resource to be created.
  /// [keyType] Specifies the Key Type to use for this Key Vault Key. Possible values are `EC` (Elliptic Curve), `EC-HSM`, `RSA` and `RSA-HSM`. Changing this forces a new resource to be created.
  /// [keyVaultId] The ID of the Key Vault where the Key should be created. Changing this forces a new resource to be created.
  /// [n] The RSA modulus of this Key Vault Key.
  /// [name] Specifies the name of the Key Vault Key. Changing this forces a new resource to be created.
  /// [notBeforeDate] Key not usable before the provided UTC datetime (Y-m-d'T'H:M:S'Z').
  /// [publicKeyOpenssh] The OpenSSH encoded public key of this Key Vault Key.
  /// [publicKeyPem] The PEM encoded public key of this Key Vault Key.
  /// [releasePolicy] A `releasePolicy` block as defined below. Changing this forces a new resource to be created.
  /// [resourceId] The (Versioned) ID for this Key Vault Key. This property points to a specific version of a Key Vault Key, as such using this won't auto-rotate values if used in other Azure Services.
  /// [resourceVersionlessId] The Versionless ID of the Key Vault Key. This property allows other Azure Services (that support it) to auto-rotate their value when the Key Vault Key is updated.
  /// [rotationPolicy] A `rotationPolicy` block as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  /// [version] The current version of the Key Vault Key.
  /// [versionlessId] The Base ID of the Key Vault Key.
  /// [x] The EC X component of this Key Vault Key.
  /// [y] The EC Y component of this Key Vault Key.
  const KeyState({
    this.curve,
    this.e,
    this.expirationDate,
    this.keyOpts,
    this.keySize,
    this.keyType,
    this.keyVaultId,
    this.n,
    this.name,
    this.notBeforeDate,
    this.publicKeyOpenssh,
    this.publicKeyPem,
    this.releasePolicy,
    this.resourceId,
    this.resourceVersionlessId,
    this.rotationPolicy,
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
      'releasePolicy': ?pulumi.Input.mapOptionalInputValue<KeyReleasePolicy, Map<String, dynamic>>(releasePolicy, (value) => value.toMap()),
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
      curve: (() { final guardedValue = map['curve']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      e: (() { final guardedValue = map['e']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expirationDate: (() { final guardedValue = map['expirationDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyOpts: (() { final guardedValue = map['keyOpts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      keySize: (() { final guardedValue = map['keySize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      keyType: (() { final guardedValue = map['keyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultId: (() { final guardedValue = map['keyVaultId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      n: (() { final guardedValue = map['n']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notBeforeDate: (() { final guardedValue = map['notBeforeDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicKeyOpenssh: (() { final guardedValue = map['publicKeyOpenssh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicKeyPem: (() { final guardedValue = map['publicKeyPem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      releasePolicy: (() { final guardedValue = map['releasePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyReleasePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceVersionlessId: (() { final guardedValue = map['resourceVersionlessId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rotationPolicy: (() { final guardedValue = map['rotationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyRotationPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionlessId: (() { final guardedValue = map['versionlessId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      x: (() { final guardedValue = map['x']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      y: (() { final guardedValue = map['y']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
