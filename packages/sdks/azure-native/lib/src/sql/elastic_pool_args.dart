// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_pool_per_database_settings.dart';
import 'sku.dart';

/// {@template pulumi_sql_elastic_pool_args_doc}
/// The set of arguments for ElasticPool.
/// {@endtemplate}
/// {@macro pulumi_sql_elastic_pool_args_doc}
class ElasticPoolArgs {
  /// Time in minutes after which elastic pool is automatically paused. A value of -1 means that automatic pause is disabled
  final pulumi.Input<int?>? autoPauseDelay;
  /// Specifies the availability zone the pool's primary replica is pinned to.
  final pulumi.Input<dynamic>? availabilityZone;
  /// The name of the elastic pool.
  final pulumi.Input<String?>? elasticPoolName;
  /// The number of secondary replicas associated with the Business Critical, Premium, or Hyperscale edition elastic pool that are used to provide high availability. Applicable only to Hyperscale elastic pools.
  final pulumi.Input<int?>? highAvailabilityReplicaCount;
  /// The license type to apply for this elastic pool.
  final pulumi.Input<dynamic>? licenseType;
  /// Resource location.
  final pulumi.Input<String?>? location;
  /// Maintenance configuration id assigned to the elastic pool. This configuration defines the period when the maintenance updates will will occur.
  final pulumi.Input<String?>? maintenanceConfigurationId;
  /// The storage limit for the database elastic pool in bytes.
  final pulumi.Input<double?>? maxSizeBytes;
  /// Minimal capacity that serverless pool will not shrink below, if not paused
  final pulumi.Input<double?>? minCapacity;
  /// The per database settings for the elastic pool.
  final pulumi.Input<ElasticPoolPerDatabaseSettings?>? perDatabaseSettings;
  /// Type of enclave requested on the elastic pool.
  final pulumi.Input<dynamic>? preferredEnclaveType;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// The elastic pool SKU.
  ///
  /// The list of SKUs may vary by region and support offer. To determine the SKUs (including the SKU name, tier/edition, family, and capacity) that are available to your subscription in an Azure region, use the `Capabilities_ListByLocation` REST API or the following command:
  ///
  /// ```azurecli
  /// az sql elastic-pool list-editions -l <location> -o table
  /// ````
  final pulumi.Input<Sku?>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Whether or not this elastic pool is zone redundant, which means the replicas of this elastic pool will be spread across multiple availability zones.
  final pulumi.Input<bool?>? zoneRedundant;

  /// Creates a new [ElasticPoolArgs].
  /// [autoPauseDelay] Time in minutes after which elastic pool is automatically paused. A value of -1 means that automatic pause is disabled
  /// [availabilityZone] Specifies the availability zone the pool's primary replica is pinned to.
  /// [elasticPoolName] The name of the elastic pool.
  /// [highAvailabilityReplicaCount] The number of secondary replicas associated with the Business Critical, Premium, or Hyperscale edition elastic pool that are used to provide high availability. Applicable only to Hyperscale elastic pools.
  /// [licenseType] The license type to apply for this elastic pool.
  /// [location] Resource location.
  /// [maintenanceConfigurationId] Maintenance configuration id assigned to the elastic pool. This configuration defines the period when the maintenance updates will will occur.
  /// [maxSizeBytes] The storage limit for the database elastic pool in bytes.
  /// [minCapacity] Minimal capacity that serverless pool will not shrink below, if not paused
  /// [perDatabaseSettings] The per database settings for the elastic pool.
  /// [preferredEnclaveType] Type of enclave requested on the elastic pool.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  /// [sku] The elastic pool SKU.
  /// [tags] Resource tags.
  /// [zoneRedundant] Whether or not this elastic pool is zone redundant, which means the replicas of this elastic pool will be spread across multiple availability zones.
  const ElasticPoolArgs({
    this.autoPauseDelay,
    this.availabilityZone,
    this.elasticPoolName,
    this.highAvailabilityReplicaCount,
    this.licenseType,
    this.location,
    this.maintenanceConfigurationId,
    this.maxSizeBytes,
    this.minCapacity,
    this.perDatabaseSettings,
    this.preferredEnclaveType,
    required this.resourceGroupName,
    required this.serverName,
    this.sku,
    this.tags,
    this.zoneRedundant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPauseDelay': ?autoPauseDelay,
      'availabilityZone': ?availabilityZone,
      'elasticPoolName': ?elasticPoolName,
      'highAvailabilityReplicaCount': ?highAvailabilityReplicaCount,
      'licenseType': ?licenseType,
      'location': ?location,
      'maintenanceConfigurationId': ?maintenanceConfigurationId,
      'maxSizeBytes': ?maxSizeBytes,
      'minCapacity': ?minCapacity,
      'perDatabaseSettings': ?pulumi.Input.mapOptionalInputValue<ElasticPoolPerDatabaseSettings, Map<String, dynamic>>(perDatabaseSettings, (value) => value.toMap()),
      'preferredEnclaveType': ?preferredEnclaveType,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory ElasticPoolArgs.fromMap(Map<String, dynamic> map) {
    return ElasticPoolArgs(
      autoPauseDelay: (() { final guardedValue = map['autoPauseDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      elasticPoolName: (() { final guardedValue = map['elasticPoolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      highAvailabilityReplicaCount: (() { final guardedValue = map['highAvailabilityReplicaCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceConfigurationId: (() { final guardedValue = map['maintenanceConfigurationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxSizeBytes: (() { final guardedValue = map['maxSizeBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      minCapacity: (() { final guardedValue = map['minCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      perDatabaseSettings: (() { final guardedValue = map['perDatabaseSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ElasticPoolPerDatabaseSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preferredEnclaveType: (() { final guardedValue = map['preferredEnclaveType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Sku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zoneRedundant: (() { final guardedValue = map['zoneRedundant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
