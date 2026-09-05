// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_configuration_store_encryption.dart';
import 'get_configuration_store_identity.dart';
import 'get_configuration_store_primary_read_key.dart';
import 'get_configuration_store_primary_write_key.dart';
import 'get_configuration_store_replica.dart';
import 'get_configuration_store_secondary_read_key.dart';
import 'get_configuration_store_secondary_write_key.dart';

/// Result data returned by getConfigurationStore.
class GetConfigurationStoreResult {
  /// The data plane proxy authentication mode.
  final String? dataPlaneProxyAuthenticationMode;
  /// Whether data plane proxy private link delegation is enabled.
  final bool? dataPlaneProxyPrivateLinkDelegationEnabled;
  /// An `encryption` block as defined below.
  final List<GetConfigurationStoreEncryption>? encryptions;
  /// The URL of the App Configuration Replica.
  final String? endpoint;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// An `identity` block as defined below.
  final List<GetConfigurationStoreIdentity>? identities;
  /// Whether local authentication methods are enabled.
  final bool? localAuthEnabled;
  /// The supported Azure location where the App Configuration Replica exists.
  final String? location;
  /// The name of the App Configuration Replica.
  final String? name;
  /// A `primaryReadKey` block as defined below containing the primary read access key.
  final List<GetConfigurationStorePrimaryReadKey>? primaryReadKeys;
  /// A `primaryWriteKey` block as defined below containing the primary write access key.
  final List<GetConfigurationStorePrimaryWriteKey>? primaryWriteKeys;
  /// The Public Network Access setting of this App Configuration.
  final String? publicNetworkAccess;
  final bool? publicNetworkAccessEnabled;
  /// Whether Purge Protection is enabled.
  final bool? purgeProtectionEnabled;
  /// One or more `replica` blocks as defined below.
  final List<GetConfigurationStoreReplica>? replicas;
  final String? resourceGroupName;
  /// A `secondaryReadKey` block as defined below containing the secondary read access key.
  final List<GetConfigurationStoreSecondaryReadKey>? secondaryReadKeys;
  /// A `secondaryWriteKey` block as defined below containing the secondary write access key.
  final List<GetConfigurationStoreSecondaryWriteKey>? secondaryWriteKeys;
  /// The name of the SKU used for this App Configuration.
  final String? sku;
  /// The number of days that items should be retained for once soft-deleted.
  final int? softDeleteRetentionDays;
  /// A mapping of tags assigned to the App Configuration.
  final Map<String, String>? tags;

  /// Creates a new [GetConfigurationStoreResult].
  /// [dataPlaneProxyAuthenticationMode] The data plane proxy authentication mode.
  /// [dataPlaneProxyPrivateLinkDelegationEnabled] Whether data plane proxy private link delegation is enabled.
  /// [encryptions] An `encryption` block as defined below.
  /// [endpoint] The URL of the App Configuration Replica.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [localAuthEnabled] Whether local authentication methods are enabled.
  /// [location] The supported Azure location where the App Configuration Replica exists.
  /// [name] The name of the App Configuration Replica.
  /// [primaryReadKeys] A `primaryReadKey` block as defined below containing the primary read access key.
  /// [primaryWriteKeys] A `primaryWriteKey` block as defined below containing the primary write access key.
  /// [publicNetworkAccess] The Public Network Access setting of this App Configuration.
  /// [publicNetworkAccessEnabled] Optional.
  /// [purgeProtectionEnabled] Whether Purge Protection is enabled.
  /// [replicas] One or more `replica` blocks as defined below.
  /// [resourceGroupName] Optional.
  /// [secondaryReadKeys] A `secondaryReadKey` block as defined below containing the secondary read access key.
  /// [secondaryWriteKeys] A `secondaryWriteKey` block as defined below containing the secondary write access key.
  /// [sku] The name of the SKU used for this App Configuration.
  /// [softDeleteRetentionDays] The number of days that items should be retained for once soft-deleted.
  /// [tags] A mapping of tags assigned to the App Configuration.
  const GetConfigurationStoreResult({
    this.dataPlaneProxyAuthenticationMode,
    this.dataPlaneProxyPrivateLinkDelegationEnabled,
    this.encryptions,
    this.endpoint,
    this.id,
    this.identities,
    this.localAuthEnabled,
    this.location,
    this.name,
    this.primaryReadKeys,
    this.primaryWriteKeys,
    this.publicNetworkAccess,
    this.publicNetworkAccessEnabled,
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
      'encryptions': ?(() { final guardedValue = encryptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetConfigurationStoreEncryption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'endpoint': ?endpoint,
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetConfigurationStoreIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'localAuthEnabled': ?localAuthEnabled,
      'location': ?location,
      'name': ?name,
      'primaryReadKeys': ?(() { final guardedValue = primaryReadKeys; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetConfigurationStorePrimaryReadKey, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'primaryWriteKeys': ?(() { final guardedValue = primaryWriteKeys; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetConfigurationStorePrimaryWriteKey, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'publicNetworkAccess': ?publicNetworkAccess,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'purgeProtectionEnabled': ?purgeProtectionEnabled,
      'replicas': ?(() { final guardedValue = replicas; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetConfigurationStoreReplica, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resourceGroupName': ?resourceGroupName,
      'secondaryReadKeys': ?(() { final guardedValue = secondaryReadKeys; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetConfigurationStoreSecondaryReadKey, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'secondaryWriteKeys': ?(() { final guardedValue = secondaryWriteKeys; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetConfigurationStoreSecondaryWriteKey, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sku': ?sku,
      'softDeleteRetentionDays': ?softDeleteRetentionDays,
      'tags': ?tags,
    };
  }

  factory GetConfigurationStoreResult.fromMap(Map<String, dynamic> map) {
    return GetConfigurationStoreResult(
      dataPlaneProxyAuthenticationMode: (() { final guardedValue = map['dataPlaneProxyAuthenticationMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataPlaneProxyPrivateLinkDelegationEnabled: (() { final guardedValue = map['dataPlaneProxyPrivateLinkDelegationEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      encryptions: (() { final guardedValue = map['encryptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetConfigurationStoreEncryption>(guardedValue, (value) => GetConfigurationStoreEncryption.fromMap((value as Map).cast<String, dynamic>())); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetConfigurationStoreIdentity>(guardedValue, (value) => GetConfigurationStoreIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      localAuthEnabled: (() { final guardedValue = map['localAuthEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryReadKeys: (() { final guardedValue = map['primaryReadKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetConfigurationStorePrimaryReadKey>(guardedValue, (value) => GetConfigurationStorePrimaryReadKey.fromMap((value as Map).cast<String, dynamic>())); })(),
      primaryWriteKeys: (() { final guardedValue = map['primaryWriteKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetConfigurationStorePrimaryWriteKey>(guardedValue, (value) => GetConfigurationStorePrimaryWriteKey.fromMap((value as Map).cast<String, dynamic>())); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      purgeProtectionEnabled: (() { final guardedValue = map['purgeProtectionEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      replicas: (() { final guardedValue = map['replicas']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetConfigurationStoreReplica>(guardedValue, (value) => GetConfigurationStoreReplica.fromMap((value as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryReadKeys: (() { final guardedValue = map['secondaryReadKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetConfigurationStoreSecondaryReadKey>(guardedValue, (value) => GetConfigurationStoreSecondaryReadKey.fromMap((value as Map).cast<String, dynamic>())); })(),
      secondaryWriteKeys: (() { final guardedValue = map['secondaryWriteKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetConfigurationStoreSecondaryWriteKey>(guardedValue, (value) => GetConfigurationStoreSecondaryWriteKey.fromMap((value as Map).cast<String, dynamic>())); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      softDeleteRetentionDays: (() { final guardedValue = map['softDeleteRetentionDays']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
