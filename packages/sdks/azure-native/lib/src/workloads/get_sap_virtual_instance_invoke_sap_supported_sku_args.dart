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
    required pulumi.Output<String> appLocation,
    required pulumi.Output<String> databaseType,
    required pulumi.Output<String> deploymentType,
    required pulumi.Output<String> environment,
    pulumi.Output<String>? highAvailabilityType,
    required pulumi.Output<String> location,
    required pulumi.Output<String> sapProduct,
  }) :
      appLocation = pulumi.Input.asInput<String>(appLocation),
      databaseType = pulumi.Input.asInput<String>(databaseType),
      deploymentType = pulumi.Input.asInput<String>(deploymentType),
      environment = pulumi.Input.asInput<String>(environment),
      highAvailabilityType = pulumi.Input.asOptionalInput<String>(highAvailabilityType),
      location = pulumi.Input.asInput<String>(location),
      sapProduct = pulumi.Input.asInput<String>(sapProduct);

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
      appLocation: pulumi.Output.create<String>(map['appLocation'] as String),
      databaseType: pulumi.Output.create<String>(map['databaseType'] as String),
      deploymentType: pulumi.Output.create<String>(map['deploymentType'] as String),
      environment: pulumi.Output.create<String>(map['environment'] as String),
      highAvailabilityType: map['highAvailabilityType'] == null ? null : pulumi.Output.create<String>(map['highAvailabilityType'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      sapProduct: pulumi.Output.create<String>(map['sapProduct'] as String),
    );
  }
}

