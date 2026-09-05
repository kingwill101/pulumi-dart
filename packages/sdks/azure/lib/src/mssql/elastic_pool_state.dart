// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_pool_per_database_settings.dart';
import 'elastic_pool_sku.dart';

/// Input properties used for looking up and filtering ElasticPool resources.
class ElasticPoolState {
  /// Specifies the type of enclave to be used by the elastic pool. When `enclaveType` is not specified (e.g., the default) enclaves are not enabled on the elastic pool. Once enabled (e.g., by specifying `Default` or `VBS`) removing the `enclaveType` field from the configuration file will force the creation of a new resource. Possible values are `Default` or `VBS`.
  ///
  /// &gt; **Note:** All databases that are added to the elastic pool must have the same `enclaveType` as the elastic pool.
  ///
  /// &gt; **Note:** `enclaveType` is not supported for DC-series SKUs.
  ///
  /// &gt; **Note:** The default value for `enclaveType` field is unset not `Default`.
  final pulumi.Input<String?>? enclaveType;
  /// Specifies the number of high availability replicas for the elastic pool. Defaults to `1`. Possible values are between `0` and `4`.
  ///
  /// &gt; **Note:** The `highAvailabilityReplicaCount` property is only supported for `Hyperscale` tier elastic pools.
  final pulumi.Input<int?>? highAvailabilityReplicaCount;
  /// Specifies the license type applied to this database. Possible values are `LicenseIncluded` and `BasePrice`.
  final pulumi.Input<String?>? licenseType;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// The name of the Public Maintenance Configuration window to apply to the elastic pool. Valid values include `SQL_Default`, `SQL_EastUS_DB_1`, `SQL_EastUS2_DB_1`, `SQL_SoutheastAsia_DB_1`, `SQL_AustraliaEast_DB_1`, `SQL_NorthEurope_DB_1`, `SQL_SouthCentralUS_DB_1`, `SQL_WestUS2_DB_1`, `SQL_UKSouth_DB_1`, `SQL_WestEurope_DB_1`, `SQL_EastUS_DB_2`, `SQL_EastUS2_DB_2`, `SQL_WestUS2_DB_2`, `SQL_SoutheastAsia_DB_2`, `SQL_AustraliaEast_DB_2`, `SQL_NorthEurope_DB_2`, `SQL_SouthCentralUS_DB_2`, `SQL_UKSouth_DB_2`, `SQL_WestEurope_DB_2`, `SQL_AustraliaSoutheast_DB_1`, `SQL_BrazilSouth_DB_1`, `SQL_CanadaCentral_DB_1`, `SQL_CanadaEast_DB_1`, `SQL_CentralUS_DB_1`, `SQL_EastAsia_DB_1`, `SQL_FranceCentral_DB_1`, `SQL_GermanyWestCentral_DB_1`, `SQL_CentralIndia_DB_1`, `SQL_SouthIndia_DB_1`, `SQL_JapanEast_DB_1`, `SQL_JapanWest_DB_1`, `SQL_NorthCentralUS_DB_1`, `SQL_UKWest_DB_1`, `SQL_WestUS_DB_1`, `SQL_AustraliaSoutheast_DB_2`, `SQL_BrazilSouth_DB_2`, `SQL_CanadaCentral_DB_2`, `SQL_CanadaEast_DB_2`, `SQL_CentralUS_DB_2`, `SQL_EastAsia_DB_2`, `SQL_FranceCentral_DB_2`, `SQL_GermanyWestCentral_DB_2`, `SQL_CentralIndia_DB_2`, `SQL_SouthIndia_DB_2`, `SQL_JapanEast_DB_2`, `SQL_JapanWest_DB_2`, `SQL_NorthCentralUS_DB_2`, `SQL_UKWest_DB_2`, `SQL_WestUS_DB_2`, `SQL_WestCentralUS_DB_1`, `SQL_FranceSouth_DB_1`, `SQL_WestCentralUS_DB_2`, `SQL_FranceSouth_DB_2`, `SQL_SwitzerlandNorth_DB_1`, `SQL_SwitzerlandNorth_DB_2`, `SQL_BrazilSoutheast_DB_1`, `SQL_UAENorth_DB_1`, `SQL_BrazilSoutheast_DB_2`, `SQL_UAENorth_DB_2`, `SQL_SouthAfricaNorth_DB_1`, `SQL_SouthAfricaNorth_DB_2`, `SQL_WestUS3_DB_1`, `SQL_WestUS3_DB_2`, `SQL_SwedenCentral_DB_1`, `SQL_SwedenCentral_DB_2`. Defaults to `SQL_Default`.
  final pulumi.Input<String?>? maintenanceConfigurationName;
  /// The max data size of the elastic pool in bytes. Conflicts with `maxSizeGb`.
  ///
  /// &gt; **Note:** One of either `maxSizeGb` or `maxSizeBytes` must be specified.
  final pulumi.Input<int?>? maxSizeBytes;
  /// The max data size of the elastic pool in gigabytes. Conflicts with `maxSizeBytes`.
  final pulumi.Input<double?>? maxSizeGb;
  /// The name of the elastic pool. This needs to be globally unique. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// A `perDatabaseSettings` block as defined below.
  final pulumi.Input<ElasticPoolPerDatabaseSettings?>? perDatabaseSettings;
  /// The name of the resource group in which to create the elastic pool. This must be the same as the resource group of the underlying SQL server. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// The name of the SQL Server on which to create the elastic pool. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? serverName;
  /// A `sku` block as defined below.
  final pulumi.Input<ElasticPoolSku?>? sku;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Whether or not this elastic pool is zone redundant. `tier` needs to be `Premium` for `DTU` based or `BusinessCritical` for `vCore` based `sku`.
  final pulumi.Input<bool?>? zoneRedundant;

  /// Creates a new [ElasticPoolState].
  /// [enclaveType] Specifies the type of enclave to be used by the elastic pool. When `enclaveType` is not specified (e.g., the default) enclaves are not enabled on the elastic pool. Once enabled (e.g., by specifying `Default` or `VBS`) removing the `enclaveType` field from the configuration file will force the creation of a new resource. Possible values are `Default` or `VBS`.
  /// [highAvailabilityReplicaCount] Specifies the number of high availability replicas for the elastic pool. Defaults to `1`. Possible values are between `0` and `4`.
  /// [licenseType] Specifies the license type applied to this database. Possible values are `LicenseIncluded` and `BasePrice`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [maintenanceConfigurationName] The name of the Public Maintenance Configuration window to apply to the elastic pool. Valid values include `SQL_Default`, `SQL_EastUS_DB_1`, `SQL_EastUS2_DB_1`, `SQL_SoutheastAsia_DB_1`, `SQL_AustraliaEast_DB_1`, `SQL_NorthEurope_DB_1`, `SQL_SouthCentralUS_DB_1`, `SQL_WestUS2_DB_1`, `SQL_UKSouth_DB_1`, `SQL_WestEurope_DB_1`, `SQL_EastUS_DB_2`, `SQL_EastUS2_DB_2`, `SQL_WestUS2_DB_2`, `SQL_SoutheastAsia_DB_2`, `SQL_AustraliaEast_DB_2`, `SQL_NorthEurope_DB_2`, `SQL_SouthCentralUS_DB_2`, `SQL_UKSouth_DB_2`, `SQL_WestEurope_DB_2`, `SQL_AustraliaSoutheast_DB_1`, `SQL_BrazilSouth_DB_1`, `SQL_CanadaCentral_DB_1`, `SQL_CanadaEast_DB_1`, `SQL_CentralUS_DB_1`, `SQL_EastAsia_DB_1`, `SQL_FranceCentral_DB_1`, `SQL_GermanyWestCentral_DB_1`, `SQL_CentralIndia_DB_1`, `SQL_SouthIndia_DB_1`, `SQL_JapanEast_DB_1`, `SQL_JapanWest_DB_1`, `SQL_NorthCentralUS_DB_1`, `SQL_UKWest_DB_1`, `SQL_WestUS_DB_1`, `SQL_AustraliaSoutheast_DB_2`, `SQL_BrazilSouth_DB_2`, `SQL_CanadaCentral_DB_2`, `SQL_CanadaEast_DB_2`, `SQL_CentralUS_DB_2`, `SQL_EastAsia_DB_2`, `SQL_FranceCentral_DB_2`, `SQL_GermanyWestCentral_DB_2`, `SQL_CentralIndia_DB_2`, `SQL_SouthIndia_DB_2`, `SQL_JapanEast_DB_2`, `SQL_JapanWest_DB_2`, `SQL_NorthCentralUS_DB_2`, `SQL_UKWest_DB_2`, `SQL_WestUS_DB_2`, `SQL_WestCentralUS_DB_1`, `SQL_FranceSouth_DB_1`, `SQL_WestCentralUS_DB_2`, `SQL_FranceSouth_DB_2`, `SQL_SwitzerlandNorth_DB_1`, `SQL_SwitzerlandNorth_DB_2`, `SQL_BrazilSoutheast_DB_1`, `SQL_UAENorth_DB_1`, `SQL_BrazilSoutheast_DB_2`, `SQL_UAENorth_DB_2`, `SQL_SouthAfricaNorth_DB_1`, `SQL_SouthAfricaNorth_DB_2`, `SQL_WestUS3_DB_1`, `SQL_WestUS3_DB_2`, `SQL_SwedenCentral_DB_1`, `SQL_SwedenCentral_DB_2`. Defaults to `SQL_Default`.
  /// [maxSizeBytes] The max data size of the elastic pool in bytes. Conflicts with `maxSizeGb`.
  /// [maxSizeGb] The max data size of the elastic pool in gigabytes. Conflicts with `maxSizeBytes`.
  /// [name] The name of the elastic pool. This needs to be globally unique. Changing this forces a new resource to be created.
  /// [perDatabaseSettings] A `perDatabaseSettings` block as defined below.
  /// [resourceGroupName] The name of the resource group in which to create the elastic pool. This must be the same as the resource group of the underlying SQL server. Changing this forces a new resource to be created.
  /// [serverName] The name of the SQL Server on which to create the elastic pool. Changing this forces a new resource to be created.
  /// [sku] A `sku` block as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zoneRedundant] Whether or not this elastic pool is zone redundant. `tier` needs to be `Premium` for `DTU` based or `BusinessCritical` for `vCore` based `sku`.
  const ElasticPoolState({
    this.enclaveType,
    this.highAvailabilityReplicaCount,
    this.licenseType,
    this.location,
    this.maintenanceConfigurationName,
    this.maxSizeBytes,
    this.maxSizeGb,
    this.name,
    this.perDatabaseSettings,
    this.resourceGroupName,
    this.serverName,
    this.sku,
    this.tags,
    this.zoneRedundant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enclaveType': ?enclaveType,
      'highAvailabilityReplicaCount': ?highAvailabilityReplicaCount,
      'licenseType': ?licenseType,
      'location': ?location,
      'maintenanceConfigurationName': ?maintenanceConfigurationName,
      'maxSizeBytes': ?maxSizeBytes,
      'maxSizeGb': ?maxSizeGb,
      'name': ?name,
      'perDatabaseSettings': ?pulumi.Input.mapOptionalInputValue<ElasticPoolPerDatabaseSettings, Map<String, dynamic>>(perDatabaseSettings, (value) => value.toMap()),
      'resourceGroupName': ?resourceGroupName,
      'serverName': ?serverName,
      'sku': ?pulumi.Input.mapOptionalInputValue<ElasticPoolSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory ElasticPoolState.fromMap(Map<String, dynamic> map) {
    return ElasticPoolState(
      enclaveType: (() { final guardedValue = map['enclaveType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      highAvailabilityReplicaCount: (() { final guardedValue = map['highAvailabilityReplicaCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceConfigurationName: (() { final guardedValue = map['maintenanceConfigurationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxSizeBytes: (() { final guardedValue = map['maxSizeBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      maxSizeGb: (() { final guardedValue = map['maxSizeGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      perDatabaseSettings: (() { final guardedValue = map['perDatabaseSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ElasticPoolPerDatabaseSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverName: (() { final guardedValue = map['serverName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ElasticPoolSku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zoneRedundant: (() { final guardedValue = map['zoneRedundant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
