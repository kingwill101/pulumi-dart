// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_directory_settings_response.dart';
import 'cache_encryption_settings_response.dart';
import 'cache_health_response.dart';
import 'cache_identity_response.dart';
import 'cache_network_settings_response.dart';
import 'cache_response_sku.dart';
import 'cache_security_settings_response.dart';
import 'cache_upgrade_settings_response.dart';
import 'cache_upgrade_status_response.dart';
import 'priming_job_response.dart';
import 'storage_target_space_allocation_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCache.
class GetCacheResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The size of this Cache, in GB.
  final int? cacheSizeGB;

  /// Specifies Directory Services settings of the cache.
  final CacheDirectorySettingsResponse? directoryServicesSettings;

  /// Specifies encryption settings of the cache.
  final CacheEncryptionSettingsResponse? encryptionSettings;

  /// Health of the cache.
  final CacheHealthResponse health;

  /// Resource ID of the cache.
  final String id;

  /// The identity of the cache, if configured.
  final CacheIdentityResponse? identity;

  /// Region name string.
  final String? location;

  /// Array of IPv4 addresses that can be used by clients mounting this cache.
  final List<String> mountAddresses;

  /// Name of cache.
  final String name;

  /// Specifies network settings of the cache.
  final CacheNetworkSettingsResponse? networkSettings;

  /// Specifies the priming jobs defined in the cache.
  final List<PrimingJobResponse> primingJobs;

  /// ARM provisioning state, see https://github.com/Azure/azure-resource-manager-rpc/blob/master/v1.0/Addendum.md#provisioningstate-property
  final String provisioningState;

  /// Specifies security settings of the cache.
  final CacheSecuritySettingsResponse? securitySettings;

  /// SKU for the cache.
  final CacheResponseSku? sku;

  /// Specifies the space allocation percentage for each storage target in the cache.
  final List<StorageTargetSpaceAllocationResponse> spaceAllocation;

  /// Subnet used for the cache.
  final String? subnet;

  /// The system meta data relating to this resource.
  final SystemDataResponse systemData;

  /// Resource tags.
  final Map<String, String>? tags;

  /// Type of the cache; Microsoft.StorageCache/Cache
  final String type;

  /// Upgrade settings of the cache.
  final CacheUpgradeSettingsResponse? upgradeSettings;

  /// Upgrade status of the cache.
  final CacheUpgradeStatusResponse upgradeStatus;

  /// Availability zones for resources. This field should only contain a single element in the array.
  final List<String>? zones;

  /// Creates a new [GetCacheResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [cacheSizeGB] The size of this Cache, in GB.
  /// [directoryServicesSettings] Specifies Directory Services settings of the cache.
  /// [encryptionSettings] Specifies encryption settings of the cache.
  /// [health] Health of the cache.
  /// [id] Resource ID of the cache.
  /// [identity] The identity of the cache, if configured.
  /// [location] Region name string.
  /// [mountAddresses] Array of IPv4 addresses that can be used by clients mounting this cache.
  /// [name] Name of cache.
  /// [networkSettings] Specifies network settings of the cache.
  /// [primingJobs] Specifies the priming jobs defined in the cache.
  /// [provisioningState] ARM provisioning state, see https://github.com/Azure/azure-resource-manager-rpc/blob/master/v1.0/Addendum.md#provisioningstate-property
  /// [securitySettings] Specifies security settings of the cache.
  /// [sku] SKU for the cache.
  /// [spaceAllocation] Specifies the space allocation percentage for each storage target in the cache.
  /// [subnet] Subnet used for the cache.
  /// [systemData] The system meta data relating to this resource.
  /// [tags] Resource tags.
  /// [type] Type of the cache; Microsoft.StorageCache/Cache
  /// [upgradeSettings] Upgrade settings of the cache.
  /// [upgradeStatus] Upgrade status of the cache.
  /// [zones] Availability zones for resources. This field should only contain a single element in the array.
  GetCacheResult({
    required this.azureApiVersion,
    this.cacheSizeGB,
    this.directoryServicesSettings,
    this.encryptionSettings,
    required this.health,
    required this.id,
    this.identity,
    this.location,
    required this.mountAddresses,
    required this.name,
    this.networkSettings,
    required this.primingJobs,
    required this.provisioningState,
    this.securitySettings,
    this.sku,
    required this.spaceAllocation,
    this.subnet,
    required this.systemData,
    this.tags,
    required this.type,
    this.upgradeSettings,
    required this.upgradeStatus,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'cacheSizeGB': ?cacheSizeGB,
      'directoryServicesSettings': ?directoryServicesSettings?.toMap(),
      'encryptionSettings': ?encryptionSettings?.toMap(),
      'health': health.toMap(),
      'id': id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'mountAddresses': mountAddresses,
      'name': name,
      'networkSettings': ?networkSettings?.toMap(),
      'primingJobs':
          pulumi.Input.encodeList<PrimingJobResponse, Map<String, dynamic>>(
            primingJobs,
            (value) => value.toMap(),
          ),
      'provisioningState': provisioningState,
      'securitySettings': ?securitySettings?.toMap(),
      'sku': ?sku?.toMap(),
      'spaceAllocation':
          pulumi.Input.encodeList<
            StorageTargetSpaceAllocationResponse,
            Map<String, dynamic>
          >(spaceAllocation, (value) => value.toMap()),
      'subnet': ?subnet,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'upgradeSettings': ?upgradeSettings?.toMap(),
      'upgradeStatus': upgradeStatus.toMap(),
      'zones': ?zones,
    };
  }

  factory GetCacheResult.fromMap(Map<String, dynamic> map) {
    return GetCacheResult(
      azureApiVersion: map['azureApiVersion'] as String,
      cacheSizeGB: (() {
        final guardedValue = map['cacheSizeGB'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      directoryServicesSettings: (() {
        final guardedValue = map['directoryServicesSettings'];
        if (guardedValue == null) return null;
        return CacheDirectorySettingsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      encryptionSettings: (() {
        final guardedValue = map['encryptionSettings'];
        if (guardedValue == null) return null;
        return CacheEncryptionSettingsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      health: CacheHealthResponse.fromMap(
        (map['health']! as Map).cast<String, dynamic>(),
      ),
      id: map['id'] as String,
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return CacheIdentityResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      mountAddresses: (map['mountAddresses'] as List).cast<String>(),
      name: map['name'] as String,
      networkSettings: (() {
        final guardedValue = map['networkSettings'];
        if (guardedValue == null) return null;
        return CacheNetworkSettingsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      primingJobs: pulumi.Input.decodeList<PrimingJobResponse>(
        map['primingJobs']!,
        (value) =>
            PrimingJobResponse.fromMap((value as Map).cast<String, dynamic>()),
      ),
      provisioningState: map['provisioningState'] as String,
      securitySettings: (() {
        final guardedValue = map['securitySettings'];
        if (guardedValue == null) return null;
        return CacheSecuritySettingsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return CacheResponseSku.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      spaceAllocation:
          pulumi.Input.decodeList<StorageTargetSpaceAllocationResponse>(
            map['spaceAllocation']!,
            (value) => StorageTargetSpaceAllocationResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      subnet: (() {
        final guardedValue = map['subnet'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
      upgradeSettings: (() {
        final guardedValue = map['upgradeSettings'];
        if (guardedValue == null) return null;
        return CacheUpgradeSettingsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      upgradeStatus: CacheUpgradeStatusResponse.fromMap(
        (map['upgradeStatus']! as Map).cast<String, dynamic>(),
      ),
      zones: (() {
        final guardedValue = map['zones'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
    );
  }
}
