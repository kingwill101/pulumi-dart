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
    pulumi.Output<String>? cacheName,
    pulumi.Output<int>? cacheSizeGB,
    pulumi.Output<CacheDirectorySettings>? directoryServicesSettings,
    pulumi.Output<CacheEncryptionSettings>? encryptionSettings,
    pulumi.Output<CacheIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<CacheNetworkSettings>? networkSettings,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<CacheSecuritySettings>? securitySettings,
    pulumi.Output<CacheSku>? sku,
    pulumi.Output<String>? subnet,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<CacheUpgradeSettings>? upgradeSettings,
    pulumi.Output<List<String>>? zones,
  }) :
      cacheName = pulumi.Input.asOptionalInput<String>(cacheName),
      cacheSizeGB = pulumi.Input.asOptionalInput<int>(cacheSizeGB),
      directoryServicesSettings = pulumi.Input.asOptionalInput<CacheDirectorySettings>(directoryServicesSettings),
      encryptionSettings = pulumi.Input.asOptionalInput<CacheEncryptionSettings>(encryptionSettings),
      identity = pulumi.Input.asOptionalInput<CacheIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      networkSettings = pulumi.Input.asOptionalInput<CacheNetworkSettings>(networkSettings),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      securitySettings = pulumi.Input.asOptionalInput<CacheSecuritySettings>(securitySettings),
      sku = pulumi.Input.asOptionalInput<CacheSku>(sku),
      subnet = pulumi.Input.asOptionalInput<String>(subnet),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      upgradeSettings = pulumi.Input.asOptionalInput<CacheUpgradeSettings>(upgradeSettings),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

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
      cacheName: map['cacheName'] == null ? null : pulumi.Output.create<String>(map['cacheName'] as String),
      cacheSizeGB: map['cacheSizeGB'] == null ? null : pulumi.Output.create<int>(map['cacheSizeGB'] as int),
      directoryServicesSettings: map['directoryServicesSettings'] == null ? null : pulumi.Output.create<CacheDirectorySettings>(CacheDirectorySettings.fromMap((map['directoryServicesSettings'] as Map).cast<String, dynamic>())),
      encryptionSettings: map['encryptionSettings'] == null ? null : pulumi.Output.create<CacheEncryptionSettings>(CacheEncryptionSettings.fromMap((map['encryptionSettings'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<CacheIdentity>(CacheIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      networkSettings: map['networkSettings'] == null ? null : pulumi.Output.create<CacheNetworkSettings>(CacheNetworkSettings.fromMap((map['networkSettings'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      securitySettings: map['securitySettings'] == null ? null : pulumi.Output.create<CacheSecuritySettings>(CacheSecuritySettings.fromMap((map['securitySettings'] as Map).cast<String, dynamic>())),
      sku: map['sku'] == null ? null : pulumi.Output.create<CacheSku>(CacheSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      subnet: map['subnet'] == null ? null : pulumi.Output.create<String>(map['subnet'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      upgradeSettings: map['upgradeSettings'] == null ? null : pulumi.Output.create<CacheUpgradeSettings>(CacheUpgradeSettings.fromMap((map['upgradeSettings'] as Map).cast<String, dynamic>())),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

