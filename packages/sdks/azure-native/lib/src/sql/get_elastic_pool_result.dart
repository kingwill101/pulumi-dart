// ignore_for_file: unused_element, unnecessary_cast

import 'elastic_pool_per_database_settings_response.dart';
import 'sku_response.dart';

/// Result data returned by getElasticPool.
class GetElasticPoolResult {
  /// Time in minutes after which elastic pool is automatically paused. A value of -1 means that automatic pause is disabled
  final int? autoPauseDelay;
  /// Specifies the availability zone the pool's primary replica is pinned to.
  final String? availabilityZone;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The creation date of the elastic pool (ISO8601 format).
  final String? creationDate;
  /// The number of secondary replicas associated with the Business Critical, Premium, or Hyperscale edition elastic pool that are used to provide high availability. Applicable only to Hyperscale elastic pools.
  final int? highAvailabilityReplicaCount;
  /// Resource ID.
  final String? id;
  /// Kind of elastic pool. This is metadata used for the Azure portal experience.
  final String? kind;
  /// The license type to apply for this elastic pool.
  final String? licenseType;
  /// Resource location.
  final String? location;
  /// Maintenance configuration id assigned to the elastic pool. This configuration defines the period when the maintenance updates will will occur.
  final String? maintenanceConfigurationId;
  /// The storage limit for the database elastic pool in bytes.
  final double? maxSizeBytes;
  /// Minimal capacity that serverless pool will not shrink below, if not paused
  final double? minCapacity;
  /// Resource name.
  final String? name;
  /// The per database settings for the elastic pool.
  final ElasticPoolPerDatabaseSettingsResponse? perDatabaseSettings;
  /// Type of enclave requested on the elastic pool.
  final String? preferredEnclaveType;
  /// The elastic pool SKU.
  ///
  /// The list of SKUs may vary by region and support offer. To determine the SKUs (including the SKU name, tier/edition, family, and capacity) that are available to your subscription in an Azure region, use the `Capabilities_ListByLocation` REST API or the following command:
  ///
  /// ```azurecli
  /// az sql elastic-pool list-editions -l <location> -o table
  /// ````
  final SkuResponse? sku;
  /// The state of the elastic pool.
  final String? state;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;
  /// Whether or not this elastic pool is zone redundant, which means the replicas of this elastic pool will be spread across multiple availability zones.
  final bool? zoneRedundant;

  /// Creates a new [GetElasticPoolResult].
  /// [autoPauseDelay] Time in minutes after which elastic pool is automatically paused. A value of -1 means that automatic pause is disabled
  /// [availabilityZone] Specifies the availability zone the pool's primary replica is pinned to.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationDate] The creation date of the elastic pool (ISO8601 format).
  /// [highAvailabilityReplicaCount] The number of secondary replicas associated with the Business Critical, Premium, or Hyperscale edition elastic pool that are used to provide high availability. Applicable only to Hyperscale elastic pools.
  /// [id] Resource ID.
  /// [kind] Kind of elastic pool. This is metadata used for the Azure portal experience.
  /// [licenseType] The license type to apply for this elastic pool.
  /// [location] Resource location.
  /// [maintenanceConfigurationId] Maintenance configuration id assigned to the elastic pool. This configuration defines the period when the maintenance updates will will occur.
  /// [maxSizeBytes] The storage limit for the database elastic pool in bytes.
  /// [minCapacity] Minimal capacity that serverless pool will not shrink below, if not paused
  /// [name] Resource name.
  /// [perDatabaseSettings] The per database settings for the elastic pool.
  /// [preferredEnclaveType] Type of enclave requested on the elastic pool.
  /// [sku] The elastic pool SKU.
  /// [state] The state of the elastic pool.
  /// [tags] Resource tags.
  /// [type] Resource type.
  /// [zoneRedundant] Whether or not this elastic pool is zone redundant, which means the replicas of this elastic pool will be spread across multiple availability zones.
  const GetElasticPoolResult({
    this.autoPauseDelay,
    this.availabilityZone,
    this.azureApiVersion,
    this.creationDate,
    this.highAvailabilityReplicaCount,
    this.id,
    this.kind,
    this.licenseType,
    this.location,
    this.maintenanceConfigurationId,
    this.maxSizeBytes,
    this.minCapacity,
    this.name,
    this.perDatabaseSettings,
    this.preferredEnclaveType,
    this.sku,
    this.state,
    this.tags,
    this.type,
    this.zoneRedundant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPauseDelay': ?autoPauseDelay,
      'availabilityZone': ?availabilityZone,
      'azureApiVersion': ?azureApiVersion,
      'creationDate': ?creationDate,
      'highAvailabilityReplicaCount': ?highAvailabilityReplicaCount,
      'id': ?id,
      'kind': ?kind,
      'licenseType': ?licenseType,
      'location': ?location,
      'maintenanceConfigurationId': ?maintenanceConfigurationId,
      'maxSizeBytes': ?maxSizeBytes,
      'minCapacity': ?minCapacity,
      'name': ?name,
      'perDatabaseSettings': ?perDatabaseSettings?.toMap(),
      'preferredEnclaveType': ?preferredEnclaveType,
      'sku': ?sku?.toMap(),
      'state': ?state,
      'tags': ?tags,
      'type': ?type,
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory GetElasticPoolResult.fromMap(Map<String, dynamic> map) {
    return GetElasticPoolResult(
      autoPauseDelay: (() { final guardedValue = map['autoPauseDelay']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationDate: (() { final guardedValue = map['creationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      highAvailabilityReplicaCount: (() { final guardedValue = map['highAvailabilityReplicaCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maintenanceConfigurationId: (() { final guardedValue = map['maintenanceConfigurationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxSizeBytes: (() { final guardedValue = map['maxSizeBytes']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      minCapacity: (() { final guardedValue = map['minCapacity']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      perDatabaseSettings: (() { final guardedValue = map['perDatabaseSettings']; if (guardedValue == null) return null; return ElasticPoolPerDatabaseSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      preferredEnclaveType: (() { final guardedValue = map['preferredEnclaveType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneRedundant: (() { final guardedValue = map['zoneRedundant']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
