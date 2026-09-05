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
  final pulumi.Input<String?>? dataPlaneProxyAuthenticationMode;
  /// Whether data plane proxy private link delegation is enabled. Defaults to `false`.
  ///
  /// &gt; **Note:** `dataPlaneProxyPrivateLinkDelegationEnabled` cannot be set to `true` when `dataPlaneProxyAuthenticationMode` is set to `Local`.
  final pulumi.Input<bool?>? dataPlaneProxyPrivateLinkDelegationEnabled;
  /// An `encryption` block as defined below.
  final pulumi.Input<ConfigurationStoreEncryption?>? encryption;
  /// The URL of the App Configuration Replica.
  final pulumi.Input<String?>? endpoint;
  /// An `identity` block as defined below.
  final pulumi.Input<ConfigurationStoreIdentity?>? identity;
  /// Whether local authentication methods is enabled. Defaults to `true`.
  final pulumi.Input<bool?>? localAuthEnabled;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// Specifies the name of the App Configuration. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// A `primaryReadKey` block as defined below containing the primary read access key.
  final pulumi.Input<List<ConfigurationStorePrimaryReadKey>?>? primaryReadKeys;
  /// A `primaryWriteKey` block as defined below containing the primary write access key.
  final pulumi.Input<List<ConfigurationStorePrimaryWriteKey>?>? primaryWriteKeys;
  /// The Public Network Access setting of the App Configuration. Possible values are `Enabled` and `Disabled`.
  ///
  /// &gt; **Note:** If `publicNetworkAccess` is not specified, the App Configuration will be created as  `Automatic`. However, once a different value is defined, can not be set again as automatic.
  final pulumi.Input<String?>? publicNetworkAccess;
  /// Whether Purge Protection is enabled. This field only works for `standard` sku. Defaults to `false`.
  ///
  /// &gt; **Note:** Once Purge Protection has been enabled it's not possible to disable it. Deleting the App Configuration with Purge Protection enabled will schedule the App Configuration to be deleted (which will happen by Azure in the configured number of days).
  final pulumi.Input<bool?>? purgeProtectionEnabled;
  /// One or more `replica` blocks as defined below.
  final pulumi.Input<List<ConfigurationStoreReplica>?>? replicas;
  /// The name of the resource group in which to create the App Configuration. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// A `secondaryReadKey` block as defined below containing the secondary read access key.
  final pulumi.Input<List<ConfigurationStoreSecondaryReadKey>?>? secondaryReadKeys;
  /// A `secondaryWriteKey` block as defined below containing the secondary write access key.
  final pulumi.Input<List<ConfigurationStoreSecondaryWriteKey>?>? secondaryWriteKeys;
  /// The SKU name of the App Configuration. Possible values are `free`, `developer`, `standard` and `premium`. Defaults to `free`.
  ///
  /// &gt; **Note:** Azure does not support downgrading `sku` to a lower tier, except from `premium` to `standard`. Downgrading will force a new resource to be created.
  final pulumi.Input<String?>? sku;
  /// The number of days that items should be retained for once soft-deleted. This field only works for `standard` sku. This value can be between `1` and `7` days. Defaults to `7`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** If Purge Protection is enabled, this field can only be configured one time and cannot be updated.
  final pulumi.Input<int?>? softDeleteRetentionDays;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ConfigurationStoreState].
  /// [dataPlaneProxyAuthenticationMode] The data plane proxy authentication mode. Possible values are `Local` and `Pass-through`. Defaults to `Local`.
  /// [dataPlaneProxyPrivateLinkDelegationEnabled] Whether data plane proxy private link delegation is enabled. Defaults to `false`.
  /// [encryption] An `encryption` block as defined below.
  /// [endpoint] The URL of the App Configuration Replica.
  /// [identity] An `identity` block as defined below.
  /// [localAuthEnabled] Whether local authentication methods is enabled. Defaults to `true`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the App Configuration. Changing this forces a new resource to be created.
  /// [primaryReadKeys] A `primaryReadKey` block as defined below containing the primary read access key.
  /// [primaryWriteKeys] A `primaryWriteKey` block as defined below containing the primary write access key.
  /// [publicNetworkAccess] The Public Network Access setting of the App Configuration. Possible values are `Enabled` and `Disabled`.
  /// [purgeProtectionEnabled] Whether Purge Protection is enabled. This field only works for `standard` sku. Defaults to `false`.
  /// [replicas] One or more `replica` blocks as defined below.
  /// [resourceGroupName] The name of the resource group in which to create the App Configuration. Changing this forces a new resource to be created.
  /// [secondaryReadKeys] A `secondaryReadKey` block as defined below containing the secondary read access key.
  /// [secondaryWriteKeys] A `secondaryWriteKey` block as defined below containing the secondary write access key.
  /// [sku] The SKU name of the App Configuration. Possible values are `free`, `developer`, `standard` and `premium`. Defaults to `free`.
  /// [softDeleteRetentionDays] The number of days that items should be retained for once soft-deleted. This field only works for `standard` sku. This value can be between `1` and `7` days. Defaults to `7`. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  const ConfigurationStoreState({
    this.dataPlaneProxyAuthenticationMode,
    this.dataPlaneProxyPrivateLinkDelegationEnabled,
    this.encryption,
    this.endpoint,
    this.identity,
    this.localAuthEnabled,
    this.location,
    this.name,
    this.primaryReadKeys,
    this.primaryWriteKeys,
    this.publicNetworkAccess,
    this.purgeProtectionEnabled,
    this.replicas,
    this.resourceGroupName,
    this.secondaryReadKeys,
    this.secondaryWriteKeys,
    this.sku,
    this.softDeleteRetentionDays,
    this.tags,
  });

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
      dataPlaneProxyAuthenticationMode: (() { final guardedValue = map['dataPlaneProxyAuthenticationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataPlaneProxyPrivateLinkDelegationEnabled: (() { final guardedValue = map['dataPlaneProxyPrivateLinkDelegationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationStoreEncryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationStoreIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      localAuthEnabled: (() { final guardedValue = map['localAuthEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryReadKeys: (() { final guardedValue = map['primaryReadKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConfigurationStorePrimaryReadKey>(guardedValue, (value) => ConfigurationStorePrimaryReadKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
      primaryWriteKeys: (() { final guardedValue = map['primaryWriteKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConfigurationStorePrimaryWriteKey>(guardedValue, (value) => ConfigurationStorePrimaryWriteKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      purgeProtectionEnabled: (() { final guardedValue = map['purgeProtectionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      replicas: (() { final guardedValue = map['replicas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConfigurationStoreReplica>(guardedValue, (value) => ConfigurationStoreReplica.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryReadKeys: (() { final guardedValue = map['secondaryReadKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConfigurationStoreSecondaryReadKey>(guardedValue, (value) => ConfigurationStoreSecondaryReadKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
      secondaryWriteKeys: (() { final guardedValue = map['secondaryWriteKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConfigurationStoreSecondaryWriteKey>(guardedValue, (value) => ConfigurationStoreSecondaryWriteKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      softDeleteRetentionDays: (() { final guardedValue = map['softDeleteRetentionDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
