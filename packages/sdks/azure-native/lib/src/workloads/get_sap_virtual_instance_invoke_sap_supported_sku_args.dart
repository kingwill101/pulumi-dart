// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workloads_get_sap_virtual_instance_invoke_sap_supported_sku_args_doc}
/// Arguments for getSapVirtualInstanceInvokeSapSupportedSku.
/// {@endtemplate}
/// {@macro pulumi_workloads_get_sap_virtual_instance_invoke_sap_supported_sku_args_doc}
class GetSapVirtualInstanceInvokeSapSupportedSkuArgs {
  /// The geo-location where the resource is to be created.
  final pulumi.Input<String> appLocation;
  /// The database type. Eg: HANA, DB2, etc
  final pulumi.Input<String> databaseType;
  /// The deployment type. Eg: SingleServer/ThreeTier
  final pulumi.Input<String> deploymentType;
  /// Defines the environment type - Production/Non Production.
  final pulumi.Input<String> environment;
  /// The high availability type.
  final pulumi.Input<String>? highAvailabilityType;
  /// The name of the Azure region.
  final pulumi.Input<String> location;
  /// Defines the SAP Product type.
  final pulumi.Input<String> sapProduct;

  /// Creates a new [GetSapVirtualInstanceInvokeSapSupportedSkuArgs].
  /// [appLocation] The geo-location where the resource is to be created.
  /// [databaseType] The database type. Eg: HANA, DB2, etc
  /// [deploymentType] The deployment type. Eg: SingleServer/ThreeTier
  /// [environment] Defines the environment type - Production/Non Production.
  /// [highAvailabilityType] The high availability type.
  /// [location] The name of the Azure region.
  /// [sapProduct] Defines the SAP Product type.
  GetSapVirtualInstanceInvokeSapSupportedSkuArgs({
    required this.appLocation,
    required this.databaseType,
    required this.deploymentType,
    required this.environment,
    this.highAvailabilityType,
    required this.location,
    required this.sapProduct,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appLocation': appLocation,
      'databaseType': databaseType,
      'deploymentType': deploymentType,
      'environment': environment,
      'highAvailabilityType': ?highAvailabilityType,
      'location': location,
      'sapProduct': sapProduct,
    };
  }

  factory GetSapVirtualInstanceInvokeSapSupportedSkuArgs.fromMap(Map<String, dynamic> map) {
    return GetSapVirtualInstanceInvokeSapSupportedSkuArgs(
      appLocation: (map['appLocation'] as String).input(),
      databaseType: (map['databaseType'] as String).input(),
      deploymentType: (map['deploymentType'] as String).input(),
      environment: (map['environment'] as String).input(),
      highAvailabilityType: map['highAvailabilityType'] == null ? null : (map['highAvailabilityType'] as String).input(),
      location: (map['location'] as String).input(),
      sapProduct: (map['sapProduct'] as String).input(),
    );
  }
}

