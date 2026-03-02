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
      appLocation: (map['appLocation'] as String).input(),
      databaseType: (map['databaseType'] as String).input(),
      dbMemory: (map['dbMemory'] as double).input(),
      dbScaleMethod: map['dbScaleMethod'] == null ? null : (map['dbScaleMethod'] as String).input(),
      deploymentType: (map['deploymentType'] as String).input(),
      environment: (map['environment'] as String).input(),
      highAvailabilityType: map['highAvailabilityType'] == null ? null : (map['highAvailabilityType'] as String).input(),
      location: (map['location'] as String).input(),
      sapProduct: (map['sapProduct'] as String).input(),
      saps: (map['saps'] as double).input(),
    );
  }
}

