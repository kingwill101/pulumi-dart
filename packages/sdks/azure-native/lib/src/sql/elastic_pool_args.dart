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
    pulumi.Output<int>? autoPauseDelay,
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<String>? elasticPoolName,
    pulumi.Output<int>? highAvailabilityReplicaCount,
    pulumi.Output<String>? licenseType,
    pulumi.Output<String>? location,
    pulumi.Output<String>? maintenanceConfigurationId,
    pulumi.Output<double>? maxSizeBytes,
    pulumi.Output<double>? minCapacity,
    pulumi.Output<ElasticPoolPerDatabaseSettings>? perDatabaseSettings,
    pulumi.Output<String>? preferredEnclaveType,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
    pulumi.Output<Sku>? sku,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<bool>? zoneRedundant,
  }) :
      autoPauseDelay = pulumi.Input.asOptionalInput<int>(autoPauseDelay),
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      elasticPoolName = pulumi.Input.asOptionalInput<String>(elasticPoolName),
      highAvailabilityReplicaCount = pulumi.Input.asOptionalInput<int>(highAvailabilityReplicaCount),
      licenseType = pulumi.Input.asOptionalInput<String>(licenseType),
      location = pulumi.Input.asOptionalInput<String>(location),
      maintenanceConfigurationId = pulumi.Input.asOptionalInput<String>(maintenanceConfigurationId),
      maxSizeBytes = pulumi.Input.asOptionalInput<double>(maxSizeBytes),
      minCapacity = pulumi.Input.asOptionalInput<double>(minCapacity),
      perDatabaseSettings = pulumi.Input.asOptionalInput<ElasticPoolPerDatabaseSettings>(perDatabaseSettings),
      preferredEnclaveType = pulumi.Input.asOptionalInput<String>(preferredEnclaveType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zoneRedundant = pulumi.Input.asOptionalInput<bool>(zoneRedundant);

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
      autoPauseDelay: map['autoPauseDelay'] == null ? null : pulumi.Output.create<int>(map['autoPauseDelay'] as int),
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      elasticPoolName: map['elasticPoolName'] == null ? null : pulumi.Output.create<String>(map['elasticPoolName'] as String),
      highAvailabilityReplicaCount: map['highAvailabilityReplicaCount'] == null ? null : pulumi.Output.create<int>(map['highAvailabilityReplicaCount'] as int),
      licenseType: map['licenseType'] == null ? null : pulumi.Output.create<String>(map['licenseType'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maintenanceConfigurationId: map['maintenanceConfigurationId'] == null ? null : pulumi.Output.create<String>(map['maintenanceConfigurationId'] as String),
      maxSizeBytes: map['maxSizeBytes'] == null ? null : pulumi.Output.create<double>(map['maxSizeBytes'] as double),
      minCapacity: map['minCapacity'] == null ? null : pulumi.Output.create<double>(map['minCapacity'] as double),
      perDatabaseSettings: map['perDatabaseSettings'] == null ? null : pulumi.Output.create<ElasticPoolPerDatabaseSettings>(ElasticPoolPerDatabaseSettings.fromMap((map['perDatabaseSettings'] as Map).cast<String, dynamic>())),
      preferredEnclaveType: map['preferredEnclaveType'] == null ? null : pulumi.Output.create<String>(map['preferredEnclaveType'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zoneRedundant: map['zoneRedundant'] == null ? null : pulumi.Output.create<bool>(map['zoneRedundant'] as bool),
    );
  }
}

