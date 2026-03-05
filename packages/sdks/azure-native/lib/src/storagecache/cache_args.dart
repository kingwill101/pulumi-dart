// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_directory_settings.dart';
import 'cache_encryption_settings.dart';
import 'cache_identity.dart';
import 'cache_network_settings.dart';
import 'cache_security_settings.dart';
import 'cache_sku.dart';
import 'cache_upgrade_settings.dart';

/// {@template pulumi_storagecache_cache_args_doc}
/// The set of arguments for Cache.
/// {@endtemplate}
/// {@macro pulumi_storagecache_cache_args_doc}
class CacheArgs {
  /// Name of cache. Length of name must not be greater than 80 and chars must be from the [-0-9a-zA-Z_] char class.
  final pulumi.Input<String>? cacheName;
  /// The size of this Cache, in GB.
  final pulumi.Input<int>? cacheSizeGB;
  /// Specifies Directory Services settings of the cache.
  final pulumi.Input<CacheDirectorySettings>? directoryServicesSettings;
  /// Specifies encryption settings of the cache.
  final pulumi.Input<CacheEncryptionSettings>? encryptionSettings;
  /// The identity of the cache, if configured.
  final pulumi.Input<CacheIdentity>? identity;
  /// Region name string.
  final pulumi.Input<String>? location;
  /// Specifies network settings of the cache.
  final pulumi.Input<CacheNetworkSettings>? networkSettings;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies security settings of the cache.
  final pulumi.Input<CacheSecuritySettings>? securitySettings;
  /// SKU for the cache.
  final pulumi.Input<CacheSku>? sku;
  /// Subnet used for the cache.
  final pulumi.Input<String>? subnet;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Upgrade settings of the cache.
  final pulumi.Input<CacheUpgradeSettings>? upgradeSettings;
  /// Availability zones for resources. This field should only contain a single element in the array.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [CacheArgs].
  /// [cacheName] Name of cache. Length of name must not be greater than 80 and chars must be from the [-0-9a-zA-Z_] char class.
  /// [cacheSizeGB] The size of this Cache, in GB.
  /// [directoryServicesSettings] Specifies Directory Services settings of the cache.
  /// [encryptionSettings] Specifies encryption settings of the cache.
  /// [identity] The identity of the cache, if configured.
  /// [location] Region name string.
  /// [networkSettings] Specifies network settings of the cache.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [securitySettings] Specifies security settings of the cache.
  /// [sku] SKU for the cache.
  /// [subnet] Subnet used for the cache.
  /// [tags] Resource tags.
  /// [upgradeSettings] Upgrade settings of the cache.
  /// [zones] Availability zones for resources. This field should only contain a single element in the array.
  CacheArgs({
    this.cacheName,
    this.cacheSizeGB,
    this.directoryServicesSettings,
    this.encryptionSettings,
    this.identity,
    this.location,
    this.networkSettings,
    required this.resourceGroupName,
    this.securitySettings,
    this.sku,
    this.subnet,
    this.tags,
    this.upgradeSettings,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheName': ?cacheName,
      'cacheSizeGB': ?cacheSizeGB,
      'directoryServicesSettings': ?pulumi.Input.mapOptionalInputValue<CacheDirectorySettings, Map<String, dynamic>>(directoryServicesSettings, (value) => value.toMap()),
      'encryptionSettings': ?pulumi.Input.mapOptionalInputValue<CacheEncryptionSettings, Map<String, dynamic>>(encryptionSettings, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<CacheIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'networkSettings': ?pulumi.Input.mapOptionalInputValue<CacheNetworkSettings, Map<String, dynamic>>(networkSettings, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'securitySettings': ?pulumi.Input.mapOptionalInputValue<CacheSecuritySettings, Map<String, dynamic>>(securitySettings, (value) => value.toMap()),
      'sku': ?pulumi.Input.mapOptionalInputValue<CacheSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'subnet': ?subnet,
      'tags': ?tags,
      'upgradeSettings': ?pulumi.Input.mapOptionalInputValue<CacheUpgradeSettings, Map<String, dynamic>>(upgradeSettings, (value) => value.toMap()),
      'zones': ?zones,
    };
  }

  factory CacheArgs.fromMap(Map<String, dynamic> map) {
    return CacheArgs(
      cacheName: (() { final guardedValue = map['cacheName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheSizeGB: (() { final guardedValue = map['cacheSizeGB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      directoryServicesSettings: (() { final guardedValue = map['directoryServicesSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheDirectorySettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      encryptionSettings: (() { final guardedValue = map['encryptionSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheEncryptionSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkSettings: (() { final guardedValue = map['networkSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheNetworkSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      securitySettings: (() { final guardedValue = map['securitySettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheSecuritySettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheSku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      upgradeSettings: (() { final guardedValue = map['upgradeSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheUpgradeSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

