// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workloads_get_sap_virtual_instance_invoke_disk_configurations_args_doc}
/// Arguments for getSapVirtualInstanceInvokeDiskConfigurations.
/// {@endtemplate}
/// {@macro pulumi_workloads_get_sap_virtual_instance_invoke_disk_configurations_args_doc}
class GetSapVirtualInstanceInvokeDiskConfigurationsArgs {
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
  /// The name of the Azure region.
  final pulumi.Input<String> location;
  /// Defines the SAP Product type.
  final pulumi.Input<String> sapProduct;

  /// Creates a new [GetSapVirtualInstanceInvokeDiskConfigurationsArgs].
  /// [appLocation] The geo-location where the SAP resources will be created.
  /// [databaseType] The database type. Eg: HANA, DB2, etc
  /// [dbVmSku] The VM SKU for database instance.
  /// [deploymentType] The deployment type. Eg: SingleServer/ThreeTier
  /// [environment] Defines the environment type - Production/Non Production.
  /// [location] The name of the Azure region.
  /// [sapProduct] Defines the SAP Product type.
  const GetSapVirtualInstanceInvokeDiskConfigurationsArgs({
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

  factory GetSapVirtualInstanceInvokeDiskConfigurationsArgs.fromMap(Map<String, dynamic> map) {
    return GetSapVirtualInstanceInvokeDiskConfigurationsArgs(
      appLocation: pulumi.Input.fromValue(map['appLocation'] as String),
      databaseType: pulumi.Input.fromValue(map['databaseType'] as String),
      dbVmSku: pulumi.Input.fromValue(map['dbVmSku'] as String),
      deploymentType: pulumi.Input.fromValue(map['deploymentType'] as String),
      environment: pulumi.Input.fromValue(map['environment'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      sapProduct: pulumi.Input.fromValue(map['sapProduct'] as String),
    );
  }
}
