// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_keyvault_managed_hardware_security_module_key_managed_hardware_security_module_key_args_doc}
/// The set of arguments for ManagedHardwareSecurityModuleKey.
/// {@endtemplate}
/// {@macro pulumi_keyvault_managed_hardware_security_module_key_managed_hardware_security_module_key_args_doc}
class ManagedHardwareSecurityModuleKeyArgs {
  /// Specifies the curve to use when creating an `EC-HSM` key. Possible values are `P-256`, `P-256K`, `P-384`, and `P-521`. This field is required if `key_type` is `EC-HSM`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? curve;
  /// Expiration UTC datetime (Y-m-d'T'H:M:S'Z'). When this parameter gets changed on reruns, if newer date is ahead of current date, an update is performed. If the newer date is before the current date, resource will be force created.
  final pulumi.Input<String>? expirationDate;
  /// A list of JSON web key operations. Possible values include: `decrypt`, `encrypt`, `sign`, `unwrapKey`, `verify`, `wrapKey` and `import`. Please note these values are case-sensitive.
  final pulumi.Input<List<String>> keyOpts;
  /// Specifies the Size of the RSA key to create in bytes. For example, 1024 or 2048. *Note*: This field is required if `key_type` is `RSA-HSM` or `oct-HSM`. Changing this forces a new resource to be created.
  final pulumi.Input<int>? keySize;
  /// Specifies the Key Type to use for this Key Vault Managed Hardware Security Module Key. Possible values are `EC-HSM`, `oct-HSM` and `RSA-HSM`. More details see [HSM-protected keys](https://learn.microsoft.com/en-us/azure/key-vault/keys/about-keys#hsm-protected-keys). Changing this forces a new resource to be created.
  final pulumi.Input<String> keyType;
  /// Specifies the ID of the Key Vault Managed Hardware Security Module that they key will be owned by. Changing this forces a new resource to be created.
  final pulumi.Input<String> managedHsmId;
  /// Specifies the name of the Key Vault Managed Hardware Security Module Key. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Key not usable before the provided UTC datetime (Y-m-d'T'H:M:S'Z').
  ///
  /// > **Note:** Once `expiration_date` is set, it's not possible to unset the key even if it is deleted & recreated as underlying Azure API uses the restore of the purged key.
  final pulumi.Input<String>? notBeforeDate;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ManagedHardwareSecurityModuleKeyArgs].
  /// [curve] Specifies the curve to use when creating an `EC-HSM` key. Possible values are `P-256`, `P-256K`, `P-384`, and `P-521`. This field is required if `key_type` is `EC-HSM`. Changing this forces a new resource to be created.
  /// [expirationDate] Expiration UTC datetime (Y-m-d'T'H:M:S'Z'). When this parameter gets changed on reruns, if newer date is ahead of current date, an update is performed. If the newer date is before the current date, resource will be force created.
  /// [keyOpts] A list of JSON web key operations. Possible values include: `decrypt`, `encrypt`, `sign`, `unwrapKey`, `verify`, `wrapKey` and `import`. Please note these values are case-sensitive.
  /// [keySize] Specifies the Size of the RSA key to create in bytes. For example, 1024 or 2048. *Note*: This field is required if `key_type` is `RSA-HSM` or `oct-HSM`. Changing this forces a new resource to be created.
  /// [keyType] Specifies the Key Type to use for this Key Vault Managed Hardware Security Module Key. Possible values are `EC-HSM`, `oct-HSM` and `RSA-HSM`. More details see [HSM-protected keys](https://learn.microsoft.com/en-us/azure/key-vault/keys/about-keys#hsm-protected-keys). Changing this forces a new resource to be created.
  /// [managedHsmId] Specifies the ID of the Key Vault Managed Hardware Security Module that they key will be owned by. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Key Vault Managed Hardware Security Module Key. Changing this forces a new resource to be created.
  /// [notBeforeDate] Key not usable before the provided UTC datetime (Y-m-d'T'H:M:S'Z').
  /// [tags] A mapping of tags to assign to the resource.
  ManagedHardwareSecurityModuleKeyArgs({
    this.curve,
    this.expirationDate,
    required this.keyOpts,
    this.keySize,
    required this.keyType,
    required this.managedHsmId,
    this.name,
    this.notBeforeDate,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'curve': ?curve,
      'expirationDate': ?expirationDate,
      'keyOpts': keyOpts,
      'keySize': ?keySize,
      'keyType': keyType,
      'managedHsmId': managedHsmId,
      'name': ?name,
      'notBeforeDate': ?notBeforeDate,
      'tags': ?tags,
    };
  }

  factory ManagedHardwareSecurityModuleKeyArgs.fromMap(Map<String, dynamic> map) {
    return ManagedHardwareSecurityModuleKeyArgs(
      curve: map['curve'] == null ? null : (map['curve']! as String).input(),
      expirationDate: map['expirationDate'] == null ? null : (map['expirationDate']! as String).input(),
      keyOpts: ((map['keyOpts'] as List).cast<String>()).input(),
      keySize: map['keySize'] == null ? null : (map['keySize']! as int).input(),
      keyType: (map['keyType'] as String).input(),
      managedHsmId: (map['managedHsmId'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      notBeforeDate: map['notBeforeDate'] == null ? null : (map['notBeforeDate']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

