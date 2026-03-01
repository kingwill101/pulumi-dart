// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ManagedHardwareSecurityModuleKey resources.
class ManagedHardwareSecurityModuleKeyState {
  /// Specifies the curve to use when creating an `EC-HSM` key. Possible values are `P-256`, `P-256K`, `P-384`, and `P-521`. This field is required if `key_type` is `EC-HSM`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? curve;
  /// Expiration UTC datetime (Y-m-d'T'H:M:S'Z'). When this parameter gets changed on reruns, if newer date is ahead of current date, an update is performed. If the newer date is before the current date, resource will be force created.
  final pulumi.Input<String>? expirationDate;
  /// A list of JSON web key operations. Possible values include: `decrypt`, `encrypt`, `sign`, `unwrapKey`, `verify`, `wrapKey` and `import`. Please note these values are case-sensitive.
  final pulumi.Input<List<String>>? keyOpts;
  /// Specifies the Size of the RSA key to create in bytes. For example, 1024 or 2048. *Note*: This field is required if `key_type` is `RSA-HSM` or `oct-HSM`. Changing this forces a new resource to be created.
  final pulumi.Input<int>? keySize;
  /// Specifies the Key Type to use for this Key Vault Managed Hardware Security Module Key. Possible values are `EC-HSM`, `oct-HSM` and `RSA-HSM`. More details see [HSM-protected keys](https://learn.microsoft.com/en-us/azure/key-vault/keys/about-keys#hsm-protected-keys). Changing this forces a new resource to be created.
  final pulumi.Input<String>? keyType;
  /// Specifies the ID of the Key Vault Managed Hardware Security Module that they key will be owned by. Changing this forces a new resource to be created.
  final pulumi.Input<String>? managedHsmId;
  /// Specifies the name of the Key Vault Managed Hardware Security Module Key. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Key not usable before the provided UTC datetime (Y-m-d'T'H:M:S'Z').
  ///
  /// > **Note:** Once `expiration_date` is set, it's not possible to unset the key even if it is deleted & recreated as underlying Azure API uses the restore of the purged key.
  final pulumi.Input<String>? notBeforeDate;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The versioned Key Vault Secret Managed Hardware Security Module Key ID.
  final pulumi.Input<String>? versionedId;

  /// Creates a new [ManagedHardwareSecurityModuleKeyState].
  /// [curve] Specifies the curve to use when creating an `EC-HSM` key. Possible values are `P-256`, `P-256K`, `P-384`, and `P-521`. This field is required if `key_type` is `EC-HSM`. Changing this forces a new resource to be created.
  /// [expirationDate] Expiration UTC datetime (Y-m-d'T'H:M:S'Z'). When this parameter gets changed on reruns, if newer date is ahead of current date, an update is performed. If the newer date is before the current date, resource will be force created.
  /// [keyOpts] A list of JSON web key operations. Possible values include: `decrypt`, `encrypt`, `sign`, `unwrapKey`, `verify`, `wrapKey` and `import`. Please note these values are case-sensitive.
  /// [keySize] Specifies the Size of the RSA key to create in bytes. For example, 1024 or 2048. *Note*: This field is required if `key_type` is `RSA-HSM` or `oct-HSM`. Changing this forces a new resource to be created.
  /// [keyType] Specifies the Key Type to use for this Key Vault Managed Hardware Security Module Key. Possible values are `EC-HSM`, `oct-HSM` and `RSA-HSM`. More details see [HSM-protected keys](https://learn.microsoft.com/en-us/azure/key-vault/keys/about-keys#hsm-protected-keys). Changing this forces a new resource to be created.
  /// [managedHsmId] Specifies the ID of the Key Vault Managed Hardware Security Module that they key will be owned by. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Key Vault Managed Hardware Security Module Key. Changing this forces a new resource to be created.
  /// [notBeforeDate] Key not usable before the provided UTC datetime (Y-m-d'T'H:M:S'Z').
  /// [tags] A mapping of tags to assign to the resource.
  /// [versionedId] The versioned Key Vault Secret Managed Hardware Security Module Key ID.
  ManagedHardwareSecurityModuleKeyState({
    pulumi.Output<String>? curve,
    pulumi.Output<String>? expirationDate,
    pulumi.Output<List<String>>? keyOpts,
    pulumi.Output<int>? keySize,
    pulumi.Output<String>? keyType,
    pulumi.Output<String>? managedHsmId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? notBeforeDate,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? versionedId,
  }) :
      curve = pulumi.Input.asOptionalInput<String>(curve),
      expirationDate = pulumi.Input.asOptionalInput<String>(expirationDate),
      keyOpts = pulumi.Input.asOptionalInput<List<String>>(keyOpts),
      keySize = pulumi.Input.asOptionalInput<int>(keySize),
      keyType = pulumi.Input.asOptionalInput<String>(keyType),
      managedHsmId = pulumi.Input.asOptionalInput<String>(managedHsmId),
      name = pulumi.Input.asOptionalInput<String>(name),
      notBeforeDate = pulumi.Input.asOptionalInput<String>(notBeforeDate),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      versionedId = pulumi.Input.asOptionalInput<String>(versionedId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'curve': ?curve,
      'expirationDate': ?expirationDate,
      'keyOpts': ?keyOpts,
      'keySize': ?keySize,
      'keyType': ?keyType,
      'managedHsmId': ?managedHsmId,
      'name': ?name,
      'notBeforeDate': ?notBeforeDate,
      'tags': ?tags,
      'versionedId': ?versionedId,
    };
  }

  factory ManagedHardwareSecurityModuleKeyState.fromMap(Map<String, dynamic> map) {
    return ManagedHardwareSecurityModuleKeyState(
      curve: map['curve'] == null ? null : pulumi.Output.create<String>(map['curve'] as String),
      expirationDate: map['expirationDate'] == null ? null : pulumi.Output.create<String>(map['expirationDate'] as String),
      keyOpts: map['keyOpts'] == null ? null : pulumi.Output.create<List<String>>((map['keyOpts'] as List).cast<String>()),
      keySize: map['keySize'] == null ? null : pulumi.Output.create<int>(map['keySize'] as int),
      keyType: map['keyType'] == null ? null : pulumi.Output.create<String>(map['keyType'] as String),
      managedHsmId: map['managedHsmId'] == null ? null : pulumi.Output.create<String>(map['managedHsmId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notBeforeDate: map['notBeforeDate'] == null ? null : pulumi.Output.create<String>(map['notBeforeDate'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      versionedId: map['versionedId'] == null ? null : pulumi.Output.create<String>(map['versionedId'] as String),
    );
  }
}

