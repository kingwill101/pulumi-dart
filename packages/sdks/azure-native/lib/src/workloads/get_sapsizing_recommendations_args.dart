// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workloads_get_sapsizing_recommendations_args_doc}
/// Arguments for getSAPSizingRecommendations.
/// {@endtemplate}
/// {@macro pulumi_workloads_get_sapsizing_recommendations_args_doc}
class GetSAPSizingRecommendationsArgs {
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

  /// The name of Azure region.
  final pulumi.Input<String> location;

  /// Defines the SAP Product type.
  final pulumi.Input<String> sapProduct;

  /// The SAP Application Performance Standard measurement.
  final pulumi.Input<double> saps;

  /// Creates a new [GetSAPSizingRecommendationsArgs].
  /// [appLocation] The geo-location where the resource is to be created.
  /// [databaseType] The database type.
  /// [dbMemory] The database memory configuration.
  /// [dbScaleMethod] The DB scale method.
  /// [deploymentType] The deployment type. Eg: SingleServer/ThreeTier
  /// [environment] Defines the environment type - Production/Non Production.
  /// [highAvailabilityType] The high availability type.
  /// [location] The name of Azure region.
  /// [sapProduct] Defines the SAP Product type.
  /// [saps] The SAP Application Performance Standard measurement.
  GetSAPSizingRecommendationsArgs({
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

  factory GetSAPSizingRecommendationsArgs.fromMap(Map<String, dynamic> map) {
    return GetSAPSizingRecommendationsArgs(
      appLocation: pulumi.Input.fromValue(map['appLocation'] as String),
      databaseType: pulumi.Input.fromValue(map['databaseType'] as String),
      dbMemory: pulumi.Input.fromValue(map['dbMemory'] as double),
      dbScaleMethod: (() {
        final guardedValue = map['dbScaleMethod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deploymentType: pulumi.Input.fromValue(map['deploymentType'] as String),
      environment: pulumi.Input.fromValue(map['environment'] as String),
      highAvailabilityType: (() {
        final guardedValue = map['highAvailabilityType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      sapProduct: pulumi.Input.fromValue(map['sapProduct'] as String),
      saps: pulumi.Input.fromValue(map['saps'] as double),
    );
  }
}
