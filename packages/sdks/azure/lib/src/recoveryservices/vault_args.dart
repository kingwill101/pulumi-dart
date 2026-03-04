// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vault_encryption.dart';
import 'vault_identity.dart';
import 'vault_monitoring.dart';

/// {@template pulumi_recoveryservices_vault_vault_args_doc}
/// The set of arguments for Vault.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_vault_vault_args_doc}
class VaultArgs {
  /// Whether to enable the Classic experience for VMware replication. If set to `false` VMware machines will be protected using the new stateless ASR replication appliance. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? classicVmwareReplicationEnabled;

  /// Is cross region restore enabled for this Vault? Only can be `true`, when `storage_mode_type` is `GeoRedundant`. Defaults to `false`.
  ///
  /// &gt; **Note:** Once `cross_region_restore_enabled` is set to `true`, changing it back to `false` forces a new Recovery Service Vault to be created.
  final pulumi.Input<bool>? crossRegionRestoreEnabled;

  /// An `encryption` block as defined below. Required with `identity`.
  ///
  /// !&gt; **Note:** Once Encryption with your own key has been Enabled it's not possible to Disable it.
  final pulumi.Input<VaultEncryption>? encryption;

  /// An `identity` block as defined below.
  final pulumi.Input<VaultIdentity>? identity;

  /// Immutability Settings of vault, possible values include: `Locked`, `Unlocked` and `Disabled`.
  ///
  /// &gt; **Note:** Once `immutability` is set to `Locked`, changing it to other values forces a new Recovery Services Vault to be created.
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
  final pulumi.Input<String> resourceGroupName;

  /// Sets the vault's SKU. Possible values include: `Standard`, `RS0`.
  final pulumi.Input<String> sku;

  /// Is soft delete enable for this Vault? Defaults to `true`.
  final pulumi.Input<bool>? softDeleteEnabled;

  /// The storage type of the Recovery Services Vault. Possible values are `GeoRedundant`, `LocallyRedundant` and `ZoneRedundant`. Defaults to `GeoRedundant`.
  final pulumi.Input<String>? storageModeType;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [VaultArgs].
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
  VaultArgs({
    this.classicVmwareReplicationEnabled,
    this.crossRegionRestoreEnabled,
    this.encryption,
    this.identity,
    this.immutability,
    this.location,
    this.monitoring,
    this.name,
    this.publicNetworkAccessEnabled,
    required this.resourceGroupName,
    required this.sku,
    this.softDeleteEnabled,
    this.storageModeType,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classicVmwareReplicationEnabled': ?classicVmwareReplicationEnabled,
      'crossRegionRestoreEnabled': ?crossRegionRestoreEnabled,
      'encryption':
          ?pulumi.Input.mapOptionalInputValue<
            VaultEncryption,
            Map<String, dynamic>
          >(encryption, (value) => value.toMap()),
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            VaultIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'immutability': ?immutability,
      'location': ?location,
      'monitoring':
          ?pulumi.Input.mapOptionalInputValue<
            VaultMonitoring,
            Map<String, dynamic>
          >(monitoring, (value) => value.toMap()),
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': resourceGroupName,
      'sku': sku,
      'softDeleteEnabled': ?softDeleteEnabled,
      'storageModeType': ?storageModeType,
      'tags': ?tags,
    };
  }

  factory VaultArgs.fromMap(Map<String, dynamic> map) {
    return VaultArgs(
      classicVmwareReplicationEnabled: (() {
        final guardedValue = map['classicVmwareReplicationEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      crossRegionRestoreEnabled: (() {
        final guardedValue = map['crossRegionRestoreEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      encryption: (() {
        final guardedValue = map['encryption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VaultEncryption.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VaultIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      immutability: (() {
        final guardedValue = map['immutability'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      monitoring: (() {
        final guardedValue = map['monitoring'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VaultMonitoring.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicNetworkAccessEnabled: (() {
        final guardedValue = map['publicNetworkAccessEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      sku: pulumi.Input.fromValue(map['sku'] as String),
      softDeleteEnabled: (() {
        final guardedValue = map['softDeleteEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      storageModeType: (() {
        final guardedValue = map['storageModeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
