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
      cacheName: map['cacheName'] == null ? null : (map['cacheName']! as String).input(),
      cacheSizeGB: map['cacheSizeGB'] == null ? null : (map['cacheSizeGB']! as int).input(),
      directoryServicesSettings: map['directoryServicesSettings'] == null ? null : (CacheDirectorySettings.fromMap((map['directoryServicesSettings']! as Map).cast<String, dynamic>())).input(),
      encryptionSettings: map['encryptionSettings'] == null ? null : (CacheEncryptionSettings.fromMap((map['encryptionSettings']! as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (CacheIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      networkSettings: map['networkSettings'] == null ? null : (CacheNetworkSettings.fromMap((map['networkSettings']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      securitySettings: map['securitySettings'] == null ? null : (CacheSecuritySettings.fromMap((map['securitySettings']! as Map).cast<String, dynamic>())).input(),
      sku: map['sku'] == null ? null : (CacheSku.fromMap((map['sku']! as Map).cast<String, dynamic>())).input(),
      subnet: map['subnet'] == null ? null : (map['subnet']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      upgradeSettings: map['upgradeSettings'] == null ? null : (CacheUpgradeSettings.fromMap((map['upgradeSettings']! as Map).cast<String, dynamic>())).input(),
      zones: map['zones'] == null ? null : ((map['zones']! as List).cast<String>()).input(),
    );
  }
}

