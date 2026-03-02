// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workloads_get_sapdisk_configurations_args_doc}
/// Arguments for getSAPDiskConfigurations.
/// {@endtemplate}
/// {@macro pulumi_workloads_get_sapdisk_configurations_args_doc}
class GetSAPDiskConfigurationsArgs {
  /// The geo-location where the SAP resources will be created.
  final pulumi.Input<String> appLocation;
  /// The database type. Eg: HANA, DB2, etc
  final pulumi.Input<String> databaseType;
  /// The VM SKU for database instance.
  final pulumi.Input<String> dbVmSku;
  /// The deployment type. Eg: SingleServer/ThreeTier
  final pulumi.Input<String> deploymentType;
  /// Defines the environment type - Production/Non Production.
  final pulumi.Input<String> environment;
  /// The name of Azure region.
  final pulumi.Input<String> location;
  /// Defines the SAP Product type.
  final pulumi.Input<String> sapProduct;

  /// Creates a new [GetSAPDiskConfigurationsArgs].
  /// [appLocation] The geo-location where the SAP resources will be created.
  /// [databaseType] The database type. Eg: HANA, DB2, etc
  /// [dbVmSku] The VM SKU for database instance.
  /// [deploymentType] The deployment type. Eg: SingleServer/ThreeTier
  /// [environment] Defines the environment type - Production/Non Production.
  /// [location] The name of Azure region.
  /// [sapProduct] Defines the SAP Product type.
  GetSAPDiskConfigurationsArgs({
    required this.appLocation,
    required this.databaseType,
    required this.dbVmSku,
    required this.deploymentType,
    required this.environment,
    required this.location,
    required this.sapProduct,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appLocation': appLocation,
      'databaseType': databaseType,
      'dbVmSku': dbVmSku,
      'deploymentType': deploymentType,
      'environment': environment,
      'location': location,
      'sapProduct': sapProduct,
    };
  }

  factory GetSAPDiskConfigurationsArgs.fromMap(Map<String, dynamic> map) {
    return GetSAPDiskConfigurationsArgs(
      appLocation: (map['appLocation'] as String).input(),
      databaseType: (map['databaseType'] as String).input(),
      dbVmSku: (map['dbVmSku'] as String).input(),
      deploymentType: (map['deploymentType'] as String).input(),
      environment: (map['environment'] as String).input(),
      location: (map['location'] as String).input(),
      sapProduct: (map['sapProduct'] as String).input(),
    );
  }
}

