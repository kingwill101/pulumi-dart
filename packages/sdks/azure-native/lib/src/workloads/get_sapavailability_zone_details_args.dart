// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workloads_get_sapavailability_zone_details_args_doc}
/// Arguments for getSAPAvailabilityZoneDetails.
/// {@endtemplate}
/// {@macro pulumi_workloads_get_sapavailability_zone_details_args_doc}
class GetSAPAvailabilityZoneDetailsArgs {
  /// The geo-location where the SAP resources will be created.
  final pulumi.Input<String> appLocation;
  /// The database type. Eg: HANA, DB2, etc
  final pulumi.Input<String> databaseType;
  /// The name of Azure region.
  final pulumi.Input<String> location;
  /// Defines the SAP Product type.
  final pulumi.Input<String> sapProduct;

  /// Creates a new [GetSAPAvailabilityZoneDetailsArgs].
  /// [appLocation] The geo-location where the SAP resources will be created.
  /// [databaseType] The database type. Eg: HANA, DB2, etc
  /// [location] The name of Azure region.
  /// [sapProduct] Defines the SAP Product type.
  GetSAPAvailabilityZoneDetailsArgs({
    required pulumi.Output<String> appLocation,
    required pulumi.Output<String> databaseType,
    required pulumi.Output<String> location,
    required pulumi.Output<String> sapProduct,
  }) :
      appLocation = pulumi.Input.asInput<String>(appLocation),
      databaseType = pulumi.Input.asInput<String>(databaseType),
      location = pulumi.Input.asInput<String>(location),
      sapProduct = pulumi.Input.asInput<String>(sapProduct);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appLocation': appLocation,
      'databaseType': databaseType,
      'location': location,
      'sapProduct': sapProduct,
    };
  }

  factory GetSAPAvailabilityZoneDetailsArgs.fromMap(Map<String, dynamic> map) {
    return GetSAPAvailabilityZoneDetailsArgs(
      appLocation: pulumi.Output.create<String>(map['appLocation'] as String),
      databaseType: pulumi.Output.create<String>(map['databaseType'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      sapProduct: pulumi.Output.create<String>(map['sapProduct'] as String),
    );
  }
}

