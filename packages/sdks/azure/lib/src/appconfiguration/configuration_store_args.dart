// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_store_encryption.dart';
import 'configuration_store_identity.dart';
import 'configuration_store_replica.dart';

/// {@template pulumi_appconfiguration_configuration_store_configuration_store_args_doc}
/// The set of arguments for ConfigurationStore.
/// {@endtemplate}
/// {@macro pulumi_appconfiguration_configuration_store_configuration_store_args_doc}
class ConfigurationStoreArgs {
  /// The data plane proxy authentication mode. Possible values are `Local` and `Pass-through`. Defaults to `Local`.
  final pulumi.Input<String>? dataPlaneProxyAuthenticationMode;
  /// Whether data plane proxy private link delegation is enabled. Defaults to `false`.
  ///
  /// > **Note:** `data_plane_proxy_private_link_delegation_enabled` cannot be set to `true` when `data_plane_proxy_authentication_mode` is set to `Local`.
  final pulumi.Input<bool>? dataPlaneProxyPrivateLinkDelegationEnabled;
  /// An `encryption` block as defined below.
  final pulumi.Input<ConfigurationStoreEncryption>? encryption;
  /// An `identity` block as defined below.
  final pulumi.Input<ConfigurationStoreIdentity>? identity;
  /// Whether local authentication methods is enabled. Defaults to `true`.
  final pulumi.Input<bool>? localAuthEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the App Configuration. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The Public Network Access setting of the App Configuration. Possible values are `Enabled` and `Disabled`.
  ///
  /// > **Note:** If `public_network_access` is not specified, the App Configuration will be created as  `Automatic`. However, once a different value is defined, can not be set again as automatic.
  final pulumi.Input<String>? publicNetworkAccess;
  /// Whether Purge Protection is enabled. This field only works for `standard` sku. Defaults to `false`.
  ///
  /// !> **Note:** Once Purge Protection has been enabled it's not possible to disable it. Deleting the App Configuration with Purge Protection enabled will schedule the App Configuration to be deleted (which will happen by Azure in the configured number of days).
  final pulumi.Input<bool>? purgeProtectionEnabled;
  /// One or more `replica` blocks as defined below.
  final pulumi.Input<List<ConfigurationStoreReplica>>? replicas;
  /// The name of the resource group in which to create the App Configuration. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The SKU name of the App Configuration. Possible values are `free`, `developer`, `standard` and `premium`. Defaults to `free`.
  ///
  /// > **Note:** Azure does not support downgrading `sku` to a lower tier, except from `premium` to `standard`. Downgrading will force a new resource to be created.
  final pulumi.Input<String>? sku;
  /// The number of days that items should be retained for once soft-deleted. This field only works for `standard` sku. This value can be between `1` and `7` days. Defaults to `7`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** If Purge Protection is enabled, this field can only be configured one time and cannot be updated.
  final pulumi.Input<int>? softDeleteRetentionDays;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ConfigurationStoreArgs].
  /// [dataPlaneProxyAuthenticationMode] The data plane proxy authentication mode. Possible values are `Local` and `Pass-through`. Defaults to `Local`.
  /// [dataPlaneProxyPrivateLinkDelegationEnabled] Whether data plane proxy private link delegation is enabled. Defaults to `false`.
  /// [encryption] An `encryption` block as defined below.
  /// [identity] An `identity` block as defined below.
  /// [localAuthEnabled] Whether local authentication methods is enabled. Defaults to `true`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the App Configuration. Changing this forces a new resource to be created.
  /// [publicNetworkAccess] The Public Network Access setting of the App Configuration. Possible values are `Enabled` and `Disabled`.
  /// [purgeProtectionEnabled] Whether Purge Protection is enabled. This field only works for `standard` sku. Defaults to `false`.
  /// [replicas] One or more `replica` blocks as defined below.
  /// [resourceGroupName] The name of the resource group in which to create the App Configuration. Changing this forces a new resource to be created.
  /// [sku] The SKU name of the App Configuration. Possible values are `free`, `developer`, `standard` and `premium`. Defaults to `free`.
  /// [softDeleteRetentionDays] The number of days that items should be retained for once soft-deleted. This field only works for `standard` sku. This value can be between `1` and `7` days. Defaults to `7`. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  ConfigurationStoreArgs({
    this.dataPlaneProxyAuthenticationMode,
    this.dataPlaneProxyPrivateLinkDelegationEnabled,
    this.encryption,
    this.identity,
    this.localAuthEnabled,
    this.location,
    this.name,
    this.publicNetworkAccess,
    this.purgeProtectionEnabled,
    this.replicas,
    required this.resourceGroupName,
    this.sku,
    this.softDeleteRetentionDays,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPlaneProxyAuthenticationMode': ?dataPlaneProxyAuthenticationMode,
      'dataPlaneProxyPrivateLinkDelegationEnabled': ?dataPlaneProxyPrivateLinkDelegationEnabled,
      'encryption': ?pulumi.Input.mapOptionalInputValue<ConfigurationStoreEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<ConfigurationStoreIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'localAuthEnabled': ?localAuthEnabled,
      'location': ?location,
      'name': ?name,
      'publicNetworkAccess': ?publicNetworkAccess,
      'purgeProtectionEnabled': ?purgeProtectionEnabled,
      'replicas': ?pulumi.Input.mapOptionalInputValue<List<ConfigurationStoreReplica>, List<Map<String, dynamic>>>(replicas, (value) => pulumi.Input.encodeList<ConfigurationStoreReplica, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'sku': ?sku,
      'softDeleteRetentionDays': ?softDeleteRetentionDays,
      'tags': ?tags,
    };
  }

  factory ConfigurationStoreArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationStoreArgs(
      dataPlaneProxyAuthenticationMode: map['dataPlaneProxyAuthenticationMode'] == null ? null : (map['dataPlaneProxyAuthenticationMode']! as String).input(),
      dataPlaneProxyPrivateLinkDelegationEnabled: map['dataPlaneProxyPrivateLinkDelegationEnabled'] == null ? null : (map['dataPlaneProxyPrivateLinkDelegationEnabled']! as bool).input(),
      encryption: map['encryption'] == null ? null : (ConfigurationStoreEncryption.fromMap((map['encryption']! as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (ConfigurationStoreIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      localAuthEnabled: map['localAuthEnabled'] == null ? null : (map['localAuthEnabled']! as bool).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess']! as String).input(),
      purgeProtectionEnabled: map['purgeProtectionEnabled'] == null ? null : (map['purgeProtectionEnabled']! as bool).input(),
      replicas: map['replicas'] == null ? null : (pulumi.Input.decodeList<ConfigurationStoreReplica>(map['replicas']!, (value) => ConfigurationStoreReplica.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: map['sku'] == null ? null : (map['sku']! as String).input(),
      softDeleteRetentionDays: map['softDeleteRetentionDays'] == null ? null : (map['softDeleteRetentionDays']! as int).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

