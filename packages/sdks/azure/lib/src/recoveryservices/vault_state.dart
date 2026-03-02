// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vault_encryption.dart';
import 'vault_identity.dart';
import 'vault_monitoring.dart';

/// Input properties used for looking up and filtering Vault resources.
class VaultState {
  /// Whether to enable the Classic experience for VMware replication. If set to `false` VMware machines will be protected using the new stateless ASR replication appliance. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? classicVmwareReplicationEnabled;
  /// Is cross region restore enabled for this Vault? Only can be `true`, when `storage_mode_type` is `GeoRedundant`. Defaults to `false`.
  ///
  /// > **Note:** Once `cross_region_restore_enabled` is set to `true`, changing it back to `false` forces a new Recovery Service Vault to be created.
  final pulumi.Input<bool>? crossRegionRestoreEnabled;
  /// An `encryption` block as defined below. Required with `identity`.
  ///
  /// !> **Note:** Once Encryption with your own key has been Enabled it's not possible to Disable it.
  final pulumi.Input<VaultEncryption>? encryption;
  /// An `identity` block as defined below.
  final pulumi.Input<VaultIdentity>? identity;
  /// Immutability Settings of vault, possible values include: `Locked`, `Unlocked` and `Disabled`.
  ///
  /// > **Note:** Once `immutability` is set to `Locked`, changing it to other values forces a new Recovery Services Vault to be created.
  final pulumi.Input<String>? immutability;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// A `monitoring` block as defined below.
  final pulumi.Input<VaultMonitoring>? monitoring;
  /// Specifies the name of the Recovery Services Vault. Recovery Service Vault name must be 2 - 50 characters long, start with a letter, contain only letters, numbers and hyphens. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Is it enabled to access the vault from public networks. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The name of the resource group in which to create the Recovery Services Vault. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Sets the vault's SKU. Possible values include: `Standard`, `RS0`.
  final pulumi.Input<String>? sku;
  /// Is soft delete enable for this Vault? Defaults to `true`.
  final pulumi.Input<bool>? softDeleteEnabled;
  /// The storage type of the Recovery Services Vault. Possible values are `GeoRedundant`, `LocallyRedundant` and `ZoneRedundant`. Defaults to `GeoRedundant`.
  final pulumi.Input<String>? storageModeType;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [VaultState].
  /// [classicVmwareReplicationEnabled] Whether to enable the Classic experience for VMware replication. If set to `false` VMware machines will be protected using the new stateless ASR replication appliance. Changing this forces a new resource to be created.
  /// [crossRegionRestoreEnabled] Is cross region restore enabled for this Vault? Only can be `true`, when `storage_mode_type` is `GeoRedundant`. Defaults to `false`.
  /// [encryption] An `encryption` block as defined below. Required with `identity`.
  /// [identity] An `identity` block as defined below.
  /// [immutability] Immutability Settings of vault, possible values include: `Locked`, `Unlocked` and `Disabled`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [monitoring] A `monitoring` block as defined below.
  /// [name] Specifies the name of the Recovery Services Vault. Recovery Service Vault name must be 2 - 50 characters long, start with a letter, contain only letters, numbers and hyphens. Changing this forces a new resource to be created.
  /// [publicNetworkAccessEnabled] Is it enabled to access the vault from public networks. Defaults to `true`.
  /// [resourceGroupName] The name of the resource group in which to create the Recovery Services Vault. Changing this forces a new resource to be created.
  /// [sku] Sets the vault's SKU. Possible values include: `Standard`, `RS0`.
  /// [softDeleteEnabled] Is soft delete enable for this Vault? Defaults to `true`.
  /// [storageModeType] The storage type of the Recovery Services Vault. Possible values are `GeoRedundant`, `LocallyRedundant` and `ZoneRedundant`. Defaults to `GeoRedundant`.
  /// [tags] A mapping of tags to assign to the resource.
  VaultState({
    this.classicVmwareReplicationEnabled,
    this.crossRegionRestoreEnabled,
    this.encryption,
    this.identity,
    this.immutability,
    this.location,
    this.monitoring,
    this.name,
    this.publicNetworkAccessEnabled,
    this.resourceGroupName,
    this.sku,
    this.softDeleteEnabled,
    this.storageModeType,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classicVmwareReplicationEnabled': ?classicVmwareReplicationEnabled,
      'crossRegionRestoreEnabled': ?crossRegionRestoreEnabled,
      'encryption': ?pulumi.Input.mapOptionalInputValue<VaultEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<VaultIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'immutability': ?immutability,
      'location': ?location,
      'monitoring': ?pulumi.Input.mapOptionalInputValue<VaultMonitoring, Map<String, dynamic>>(monitoring, (value) => value.toMap()),
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': ?resourceGroupName,
      'sku': ?sku,
      'softDeleteEnabled': ?softDeleteEnabled,
      'storageModeType': ?storageModeType,
      'tags': ?tags,
    };
  }

  factory VaultState.fromMap(Map<String, dynamic> map) {
    return VaultState(
      classicVmwareReplicationEnabled: map['classicVmwareReplicationEnabled'] == null ? null : (map['classicVmwareReplicationEnabled']! as bool).input(),
      crossRegionRestoreEnabled: map['crossRegionRestoreEnabled'] == null ? null : (map['crossRegionRestoreEnabled']! as bool).input(),
      encryption: map['encryption'] == null ? null : (VaultEncryption.fromMap((map['encryption']! as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (VaultIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      immutability: map['immutability'] == null ? null : (map['immutability']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      monitoring: map['monitoring'] == null ? null : (VaultMonitoring.fromMap((map['monitoring']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled']! as bool).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      sku: map['sku'] == null ? null : (map['sku']! as String).input(),
      softDeleteEnabled: map['softDeleteEnabled'] == null ? null : (map['softDeleteEnabled']! as bool).input(),
      storageModeType: map['storageModeType'] == null ? null : (map['storageModeType']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

