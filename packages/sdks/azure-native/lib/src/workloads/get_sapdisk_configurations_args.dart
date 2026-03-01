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
    required pulumi.Output<String> appLocation,
    required pulumi.Output<String> databaseType,
    required pulumi.Output<String> dbVmSku,
    required pulumi.Output<String> deploymentType,
    required pulumi.Output<String> environment,
    required pulumi.Output<String> location,
    required pulumi.Output<String> sapProduct,
  }) :
      appLocation = pulumi.Input.asInput<String>(appLocation),
      databaseType = pulumi.Input.asInput<String>(databaseType),
      dbVmSku = pulumi.Input.asInput<String>(dbVmSku),
      deploymentType = pulumi.Input.asInput<String>(deploymentType),
      environment = pulumi.Input.asInput<String>(environment),
      location = pulumi.Input.asInput<String>(location),
      sapProduct = pulumi.Input.asInput<String>(sapProduct);

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
      appLocation: pulumi.Output.create<String>(map['appLocation'] as String),
      databaseType: pulumi.Output.create<String>(map['databaseType'] as String),
      dbVmSku: pulumi.Output.create<String>(map['dbVmSku'] as String),
      deploymentType: pulumi.Output.create<String>(map['deploymentType'] as String),
      environment: pulumi.Output.create<String>(map['environment'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      sapProduct: pulumi.Output.create<String>(map['sapProduct'] as String),
    );
  }
}

