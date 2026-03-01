// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workloads_get_sap_virtual_instance_invoke_sizing_recommendations_args_doc}
/// Arguments for getSapVirtualInstanceInvokeSizingRecommendations.
/// {@endtemplate}
/// {@macro pulumi_workloads_get_sap_virtual_instance_invoke_sizing_recommendations_args_doc}
class GetSapVirtualInstanceInvokeSizingRecommendationsArgs {
  /// The geo-location where the resource is to be created.
  final pulumi.Input<String> appLocation;
  /// The database type.
  final pulumi.Input<String> databaseType;
  /// The database memory configuration.
  final pulumi.Input<double> dbMemory;
  /// The DB scale method.
  final pulumi.Input<String>? dbScaleMethod;
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
  /// The SAP Application Performance Standard measurement.
  final pulumi.Input<double> saps;

  /// Creates a new [GetSapVirtualInstanceInvokeSizingRecommendationsArgs].
  /// [appLocation] The geo-location where the resource is to be created.
  /// [databaseType] The database type.
  /// [dbMemory] The database memory configuration.
  /// [dbScaleMethod] The DB scale method.
  /// [deploymentType] The deployment type. Eg: SingleServer/ThreeTier
  /// [environment] Defines the environment type - Production/Non Production.
  /// [highAvailabilityType] The high availability type.
  /// [location] The name of the Azure region.
  /// [sapProduct] Defines the SAP Product type.
  /// [saps] The SAP Application Performance Standard measurement.
  GetSapVirtualInstanceInvokeSizingRecommendationsArgs({
    required pulumi.Output<String> appLocation,
    required pulumi.Output<String> databaseType,
    required pulumi.Output<double> dbMemory,
    pulumi.Output<String>? dbScaleMethod,
    required pulumi.Output<String> deploymentType,
    required pulumi.Output<String> environment,
    pulumi.Output<String>? highAvailabilityType,
    required pulumi.Output<String> location,
    required pulumi.Output<String> sapProduct,
    required pulumi.Output<double> saps,
  }) :
      appLocation = pulumi.Input.asInput<String>(appLocation),
      databaseType = pulumi.Input.asInput<String>(databaseType),
      dbMemory = pulumi.Input.asInput<double>(dbMemory),
      dbScaleMethod = pulumi.Input.asOptionalInput<String>(dbScaleMethod),
      deploymentType = pulumi.Input.asInput<String>(deploymentType),
      environment = pulumi.Input.asInput<String>(environment),
      highAvailabilityType = pulumi.Input.asOptionalInput<String>(highAvailabilityType),
      location = pulumi.Input.asInput<String>(location),
      sapProduct = pulumi.Input.asInput<String>(sapProduct),
      saps = pulumi.Input.asInput<double>(saps);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appLocation': appLocation,
      'databaseType': databaseType,
      'dbMemory': dbMemory,
      'dbScaleMethod': ?dbScaleMethod,
      'deploymentType': deploymentType,
      'environment': environment,
      'highAvailabilityType': ?highAvailabilityType,
      'location': location,
      'sapProduct': sapProduct,
      'saps': saps,
    };
  }

  factory GetSapVirtualInstanceInvokeSizingRecommendationsArgs.fromMap(Map<String, dynamic> map) {
    return GetSapVirtualInstanceInvokeSizingRecommendationsArgs(
      appLocation: pulumi.Output.create<String>(map['appLocation'] as String),
      databaseType: pulumi.Output.create<String>(map['databaseType'] as String),
      dbMemory: pulumi.Output.create<double>(map['dbMemory'] as double),
      dbScaleMethod: map['dbScaleMethod'] == null ? null : pulumi.Output.create<String>(map['dbScaleMethod'] as String),
      deploymentType: pulumi.Output.create<String>(map['deploymentType'] as String),
      environment: pulumi.Output.create<String>(map['environment'] as String),
      highAvailabilityType: map['highAvailabilityType'] == null ? null : pulumi.Output.create<String>(map['highAvailabilityType'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      sapProduct: pulumi.Output.create<String>(map['sapProduct'] as String),
      saps: pulumi.Output.create<double>(map['saps'] as double),
    );
  }
}

