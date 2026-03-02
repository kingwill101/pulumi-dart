// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ManagedStorageAccount resources.
class ManagedStorageAccountState {
  /// The ID of the Key Vault where the Managed Storage Account should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? keyVaultId;
  /// The name which should be used for this Key Vault Managed Storage Account. Changing this forces a new Key Vault Managed Storage Account to be created.
  final pulumi.Input<String>? name;
  /// Should Storage Account access key be regenerated periodically?
  ///
  /// > **Note:** Azure Key Vault application needs to have access to Storage Account for auto regeneration to work. Example can be found above.
  final pulumi.Input<bool>? regenerateKeyAutomatically;
  /// How often Storage Account access key should be regenerated. Value needs to be in [ISO 8601 duration format](https://en.wikipedia.org/wiki/ISO_8601#Durations).
  final pulumi.Input<String>? regenerationPeriod;
  /// The ID of the Storage Account.
  final pulumi.Input<String>? storageAccountId;
  /// Which Storage Account access key that is managed by Key Vault. Possible values are `key1` and `key2`.
  final pulumi.Input<String>? storageAccountKey;
  /// A mapping of tags which should be assigned to the Key Vault Managed Storage Account. Changing this forces a new resource to be created.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ManagedStorageAccountState].
  /// [keyVaultId] The ID of the Key Vault where the Managed Storage Account should be created. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Key Vault Managed Storage Account. Changing this forces a new Key Vault Managed Storage Account to be created.
  /// [regenerateKeyAutomatically] Should Storage Account access key be regenerated periodically?
  /// [regenerationPeriod] How often Storage Account access key should be regenerated. Value needs to be in [ISO 8601 duration format](https://en.wikipedia.org/wiki/ISO_8601#Durations).
  /// [storageAccountId] The ID of the Storage Account.
  /// [storageAccountKey] Which Storage Account access key that is managed by Key Vault. Possible values are `key1` and `key2`.
  /// [tags] A mapping of tags which should be assigned to the Key Vault Managed Storage Account. Changing this forces a new resource to be created.
  ManagedStorageAccountState({
    this.keyVaultId,
    this.name,
    this.regenerateKeyAutomatically,
    this.regenerationPeriod,
    this.storageAccountId,
    this.storageAccountKey,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultId': ?keyVaultId,
      'name': ?name,
      'regenerateKeyAutomatically': ?regenerateKeyAutomatically,
      'regenerationPeriod': ?regenerationPeriod,
      'storageAccountId': ?storageAccountId,
      'storageAccountKey': ?storageAccountKey,
      'tags': ?tags,
    };
  }

  factory ManagedStorageAccountState.fromMap(Map<String, dynamic> map) {
    return ManagedStorageAccountState(
      keyVaultId: map['keyVaultId'] == null ? null : (map['keyVaultId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      regenerateKeyAutomatically: map['regenerateKeyAutomatically'] == null ? null : (map['regenerateKeyAutomatically'] as bool).input(),
      regenerationPeriod: map['regenerationPeriod'] == null ? null : (map['regenerationPeriod'] as String).input(),
      storageAccountId: map['storageAccountId'] == null ? null : (map['storageAccountId'] as String).input(),
      storageAccountKey: map['storageAccountKey'] == null ? null : (map['storageAccountKey'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

