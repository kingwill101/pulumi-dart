// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_store_encryption.dart';
import 'configuration_store_identity.dart';
import 'configuration_store_primary_read_key.dart';
import 'configuration_store_primary_write_key.dart';
import 'configuration_store_replica.dart';
import 'configuration_store_secondary_read_key.dart';
import 'configuration_store_secondary_write_key.dart';

/// Input properties used for looking up and filtering ConfigurationStore resources.
class ConfigurationStoreState {
  /// The data plane proxy authentication mode. Possible values are `Local` and `Pass-through`. Defaults to `Local`.
  final pulumi.Input<String>? dataPlaneProxyAuthenticationMode;
  /// Whether data plane proxy private link delegation is enabled. Defaults to `false`.
  ///
  /// > **Note:** `data_plane_proxy_private_link_delegation_enabled` cannot be set to `true` when `data_plane_proxy_authentication_mode` is set to `Local`.
  final pulumi.Input<bool>? dataPlaneProxyPrivateLinkDelegationEnabled;
  /// An `encryption` block as defined below.
  final pulumi.Input<ConfigurationStoreEncryption>? encryption;
  /// The URL of the App Configuration Replica.
  final pulumi.Input<String>? endpoint;
  /// An `identity` block as defined below.
  final pulumi.Input<ConfigurationStoreIdentity>? identity;
  /// Whether local authentication methods is enabled. Defaults to `true`.
  final pulumi.Input<bool>? localAuthEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the App Configuration. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A `primary_read_key` block as defined below containing the primary read access key.
  final pulumi.Input<List<ConfigurationStorePrimaryReadKey>>? primaryReadKeys;
  /// A `primary_write_key` block as defined below containing the primary write access key.
  final pulumi.Input<List<ConfigurationStorePrimaryWriteKey>>? primaryWriteKeys;
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
  final pulumi.Input<String>? resourceGroupName;
  /// A `secondary_read_key` block as defined below containing the secondary read access key.
  final pulumi.Input<List<ConfigurationStoreSecondaryReadKey>>? secondaryReadKeys;
  /// A `secondary_write_key` block as defined below containing the secondary write access key.
  final pulumi.Input<List<ConfigurationStoreSecondaryWriteKey>>? secondaryWriteKeys;
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

  /// Creates a new [ConfigurationStoreState].
  /// [dataPlaneProxyAuthenticationMode] The data plane proxy authentication mode. Possible values are `Local` and `Pass-through`. Defaults to `Local`.
  /// [dataPlaneProxyPrivateLinkDelegationEnabled] Whether data plane proxy private link delegation is enabled. Defaults to `false`.
  /// [encryption] An `encryption` block as defined below.
  /// [endpoint] The URL of the App Configuration Replica.
  /// [identity] An `identity` block as defined below.
  /// [localAuthEnabled] Whether local authentication methods is enabled. Defaults to `true`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the App Configuration. Changing this forces a new resource to be created.
  /// [primaryReadKeys] A `primary_read_key` block as defined below containing the primary read access key.
  /// [primaryWriteKeys] A `primary_write_key` block as defined below containing the primary write access key.
  /// [publicNetworkAccess] The Public Network Access setting of the App Configuration. Possible values are `Enabled` and `Disabled`.
  /// [purgeProtectionEnabled] Whether Purge Protection is enabled. This field only works for `standard` sku. Defaults to `false`.
  /// [replicas] One or more `replica` blocks as defined below.
  /// [resourceGroupName] The name of the resource group in which to create the App Configuration. Changing this forces a new resource to be created.
  /// [secondaryReadKeys] A `secondary_read_key` block as defined below containing the secondary read access key.
  /// [secondaryWriteKeys] A `secondary_write_key` block as defined below containing the secondary write access key.
  /// [sku] The SKU name of the App Configuration. Possible values are `free`, `developer`, `standard` and `premium`. Defaults to `free`.
  /// [softDeleteRetentionDays] The number of days that items should be retained for once soft-deleted. This field only works for `standard` sku. This value can be between `1` and `7` days. Defaults to `7`. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  ConfigurationStoreState({
    pulumi.Output<String>? dataPlaneProxyAuthenticationMode,
    pulumi.Output<bool>? dataPlaneProxyPrivateLinkDelegationEnabled,
    pulumi.Output<ConfigurationStoreEncryption>? encryption,
    pulumi.Output<String>? endpoint,
    pulumi.Output<ConfigurationStoreIdentity>? identity,
    pulumi.Output<bool>? localAuthEnabled,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<List<ConfigurationStorePrimaryReadKey>>? primaryReadKeys,
    pulumi.Output<List<ConfigurationStorePrimaryWriteKey>>? primaryWriteKeys,
    pulumi.Output<String>? publicNetworkAccess,
    pulumi.Output<bool>? purgeProtectionEnabled,
    pulumi.Output<List<ConfigurationStoreReplica>>? replicas,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<List<ConfigurationStoreSecondaryReadKey>>? secondaryReadKeys,
    pulumi.Output<List<ConfigurationStoreSecondaryWriteKey>>? secondaryWriteKeys,
    pulumi.Output<String>? sku,
    pulumi.Output<int>? softDeleteRetentionDays,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      dataPlaneProxyAuthenticationMode = pulumi.Input.asOptionalInput<String>(dataPlaneProxyAuthenticationMode),
      dataPlaneProxyPrivateLinkDelegationEnabled = pulumi.Input.asOptionalInput<bool>(dataPlaneProxyPrivateLinkDelegationEnabled),
      encryption = pulumi.Input.asOptionalInput<ConfigurationStoreEncryption>(encryption),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      identity = pulumi.Input.asOptionalInput<ConfigurationStoreIdentity>(identity),
      localAuthEnabled = pulumi.Input.asOptionalInput<bool>(localAuthEnabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      primaryReadKeys = pulumi.Input.asOptionalInput<List<ConfigurationStorePrimaryReadKey>>(primaryReadKeys),
      primaryWriteKeys = pulumi.Input.asOptionalInput<List<ConfigurationStorePrimaryWriteKey>>(primaryWriteKeys),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      purgeProtectionEnabled = pulumi.Input.asOptionalInput<bool>(purgeProtectionEnabled),
      replicas = pulumi.Input.asOptionalInput<List<ConfigurationStoreReplica>>(replicas),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      secondaryReadKeys = pulumi.Input.asOptionalInput<List<ConfigurationStoreSecondaryReadKey>>(secondaryReadKeys),
      secondaryWriteKeys = pulumi.Input.asOptionalInput<List<ConfigurationStoreSecondaryWriteKey>>(secondaryWriteKeys),
      sku = pulumi.Input.asOptionalInput<String>(sku),
      softDeleteRetentionDays = pulumi.Input.asOptionalInput<int>(softDeleteRetentionDays),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPlaneProxyAuthenticationMode': ?dataPlaneProxyAuthenticationMode,
      'dataPlaneProxyPrivateLinkDelegationEnabled': ?dataPlaneProxyPrivateLinkDelegationEnabled,
      'encryption': ?pulumi.Input.mapOptionalInputValue<ConfigurationStoreEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'endpoint': ?endpoint,
      'identity': ?pulumi.Input.mapOptionalInputValue<ConfigurationStoreIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'localAuthEnabled': ?localAuthEnabled,
      'location': ?location,
      'name': ?name,
      'primaryReadKeys': ?pulumi.Input.mapOptionalInputValue<List<ConfigurationStorePrimaryReadKey>, List<Map<String, dynamic>>>(primaryReadKeys, (value) => pulumi.Input.encodeList<ConfigurationStorePrimaryReadKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'primaryWriteKeys': ?pulumi.Input.mapOptionalInputValue<List<ConfigurationStorePrimaryWriteKey>, List<Map<String, dynamic>>>(primaryWriteKeys, (value) => pulumi.Input.encodeList<ConfigurationStorePrimaryWriteKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicNetworkAccess': ?publicNetworkAccess,
      'purgeProtectionEnabled': ?purgeProtectionEnabled,
      'replicas': ?pulumi.Input.mapOptionalInputValue<List<ConfigurationStoreReplica>, List<Map<String, dynamic>>>(replicas, (value) => pulumi.Input.encodeList<ConfigurationStoreReplica, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': ?resourceGroupName,
      'secondaryReadKeys': ?pulumi.Input.mapOptionalInputValue<List<ConfigurationStoreSecondaryReadKey>, List<Map<String, dynamic>>>(secondaryReadKeys, (value) => pulumi.Input.encodeList<ConfigurationStoreSecondaryReadKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secondaryWriteKeys': ?pulumi.Input.mapOptionalInputValue<List<ConfigurationStoreSecondaryWriteKey>, List<Map<String, dynamic>>>(secondaryWriteKeys, (value) => pulumi.Input.encodeList<ConfigurationStoreSecondaryWriteKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sku': ?sku,
      'softDeleteRetentionDays': ?softDeleteRetentionDays,
      'tags': ?tags,
    };
  }

  factory ConfigurationStoreState.fromMap(Map<String, dynamic> map) {
    return ConfigurationStoreState(
      dataPlaneProxyAuthenticationMode: map['dataPlaneProxyAuthenticationMode'] == null ? null : pulumi.Output.create<String>(map['dataPlaneProxyAuthenticationMode'] as String),
      dataPlaneProxyPrivateLinkDelegationEnabled: map['dataPlaneProxyPrivateLinkDelegationEnabled'] == null ? null : pulumi.Output.create<bool>(map['dataPlaneProxyPrivateLinkDelegationEnabled'] as bool),
      encryption: map['encryption'] == null ? null : pulumi.Output.create<ConfigurationStoreEncryption>(ConfigurationStoreEncryption.fromMap((map['encryption'] as Map).cast<String, dynamic>())),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ConfigurationStoreIdentity>(ConfigurationStoreIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      localAuthEnabled: map['localAuthEnabled'] == null ? null : pulumi.Output.create<bool>(map['localAuthEnabled'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      primaryReadKeys: map['primaryReadKeys'] == null ? null : pulumi.Output.create<List<ConfigurationStorePrimaryReadKey>>(pulumi.Input.decodeList<ConfigurationStorePrimaryReadKey>(map['primaryReadKeys'], (value) => ConfigurationStorePrimaryReadKey.fromMap((value as Map).cast<String, dynamic>()))),
      primaryWriteKeys: map['primaryWriteKeys'] == null ? null : pulumi.Output.create<List<ConfigurationStorePrimaryWriteKey>>(pulumi.Input.decodeList<ConfigurationStorePrimaryWriteKey>(map['primaryWriteKeys'], (value) => ConfigurationStorePrimaryWriteKey.fromMap((value as Map).cast<String, dynamic>()))),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : pulumi.Output.create<String>(map['publicNetworkAccess'] as String),
      purgeProtectionEnabled: map['purgeProtectionEnabled'] == null ? null : pulumi.Output.create<bool>(map['purgeProtectionEnabled'] as bool),
      replicas: map['replicas'] == null ? null : pulumi.Output.create<List<ConfigurationStoreReplica>>(pulumi.Input.decodeList<ConfigurationStoreReplica>(map['replicas'], (value) => ConfigurationStoreReplica.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      secondaryReadKeys: map['secondaryReadKeys'] == null ? null : pulumi.Output.create<List<ConfigurationStoreSecondaryReadKey>>(pulumi.Input.decodeList<ConfigurationStoreSecondaryReadKey>(map['secondaryReadKeys'], (value) => ConfigurationStoreSecondaryReadKey.fromMap((value as Map).cast<String, dynamic>()))),
      secondaryWriteKeys: map['secondaryWriteKeys'] == null ? null : pulumi.Output.create<List<ConfigurationStoreSecondaryWriteKey>>(pulumi.Input.decodeList<ConfigurationStoreSecondaryWriteKey>(map['secondaryWriteKeys'], (value) => ConfigurationStoreSecondaryWriteKey.fromMap((value as Map).cast<String, dynamic>()))),
      sku: map['sku'] == null ? null : pulumi.Output.create<String>(map['sku'] as String),
      softDeleteRetentionDays: map['softDeleteRetentionDays'] == null ? null : pulumi.Output.create<int>(map['softDeleteRetentionDays'] as int),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

