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
  final pulumi.Input<int>? autoPauseDelay;
  /// Specifies the availability zone the pool's primary replica is pinned to.
  final pulumi.Input<String>? availabilityZone;
  /// The name of the elastic pool.
  final pulumi.Input<String>? elasticPoolName;
  /// The number of secondary replicas associated with the Business Critical, Premium, or Hyperscale edition elastic pool that are used to provide high availability. Applicable only to Hyperscale elastic pools.
  final pulumi.Input<int>? highAvailabilityReplicaCount;
  /// The license type to apply for this elastic pool.
  final pulumi.Input<String>? licenseType;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// Maintenance configuration id assigned to the elastic pool. This configuration defines the period when the maintenance updates will will occur.
  final pulumi.Input<String>? maintenanceConfigurationId;
  /// The storage limit for the database elastic pool in bytes.
  final pulumi.Input<double>? maxSizeBytes;
  /// Minimal capacity that serverless pool will not shrink below, if not paused
  final pulumi.Input<double>? minCapacity;
  /// The per database settings for the elastic pool.
  final pulumi.Input<ElasticPoolPerDatabaseSettings>? perDatabaseSettings;
  /// Type of enclave requested on the elastic pool.
  final pulumi.Input<String>? preferredEnclaveType;
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
  final pulumi.Input<Sku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Whether or not this elastic pool is zone redundant, which means the replicas of this elastic pool will be spread across multiple availability zones.
  final pulumi.Input<bool>? zoneRedundant;

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
  ElasticPoolArgs({
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
      autoPauseDelay: map['autoPauseDelay'] == null ? null : (map['autoPauseDelay'] as int).input(),
      availabilityZone: map['availabilityZone'] == null ? null : (map['availabilityZone'] as String).input(),
      elasticPoolName: map['elasticPoolName'] == null ? null : (map['elasticPoolName'] as String).input(),
      highAvailabilityReplicaCount: map['highAvailabilityReplicaCount'] == null ? null : (map['highAvailabilityReplicaCount'] as int).input(),
      licenseType: map['licenseType'] == null ? null : (map['licenseType'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      maintenanceConfigurationId: map['maintenanceConfigurationId'] == null ? null : (map['maintenanceConfigurationId'] as String).input(),
      maxSizeBytes: map['maxSizeBytes'] == null ? null : (map['maxSizeBytes'] as double).input(),
      minCapacity: map['minCapacity'] == null ? null : (map['minCapacity'] as double).input(),
      perDatabaseSettings: map['perDatabaseSettings'] == null ? null : (ElasticPoolPerDatabaseSettings.fromMap((map['perDatabaseSettings'] as Map).cast<String, dynamic>())).input(),
      preferredEnclaveType: map['preferredEnclaveType'] == null ? null : (map['preferredEnclaveType'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serverName: (map['serverName'] as String).input(),
      sku: map['sku'] == null ? null : (Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      zoneRedundant: map['zoneRedundant'] == null ? null : (map['zoneRedundant'] as bool).input(),
    );
  }
}

