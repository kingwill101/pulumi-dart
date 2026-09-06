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
  final pulumi.Input<dynamic> databaseType;
  /// The database memory configuration.
  final pulumi.Input<double> dbMemory;
  /// The DB scale method.
  final pulumi.Input<dynamic>? dbScaleMethod;
  /// The deployment type. Eg: SingleServer/ThreeTier
  final pulumi.Input<dynamic> deploymentType;
  /// Defines the environment type - Production/Non Production.
  final pulumi.Input<dynamic> environment;
  /// The high availability type.
  final pulumi.Input<dynamic>? highAvailabilityType;
  /// The name of the Azure region.
  final pulumi.Input<String> location;
  /// Defines the SAP Product type.
  final pulumi.Input<dynamic> sapProduct;
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
  const GetSapVirtualInstanceInvokeSizingRecommendationsArgs({
    required this.appLocation,
    required this.databaseType,
    required this.dbMemory,
    this.dbScaleMethod,
    required this.deploymentType,
    required this.environment,
    this.highAvailabilityType,
    required this.location,
    required this.sapProduct,
    required this.saps,
  });

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
      appLocation: pulumi.Input.fromValue(map['appLocation'] as String),
      databaseType: pulumi.Input.fromValue(map['databaseType']),
      dbMemory: pulumi.Input.fromValue((map['dbMemory'] as num).toDouble()),
      dbScaleMethod: (() { final guardedValue = map['dbScaleMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      deploymentType: pulumi.Input.fromValue(map['deploymentType']),
      environment: pulumi.Input.fromValue(map['environment']),
      highAvailabilityType: (() { final guardedValue = map['highAvailabilityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      sapProduct: pulumi.Input.fromValue(map['sapProduct']),
      saps: pulumi.Input.fromValue((map['saps'] as num).toDouble()),
    );
  }
}
