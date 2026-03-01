// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workloads_get_sap_virtual_instance_invoke_availability_zone_details_args_doc}
/// Arguments for getSapVirtualInstanceInvokeAvailabilityZoneDetails.
/// {@endtemplate}
/// {@macro pulumi_workloads_get_sap_virtual_instance_invoke_availability_zone_details_args_doc}
class GetSapVirtualInstanceInvokeAvailabilityZoneDetailsArgs {
  /// The geo-location where the SAP resources will be created.
  final pulumi.Input<String> appLocation;
  /// The database type. Eg: HANA, DB2, etc
  final pulumi.Input<String> databaseType;
  /// The name of the Azure region.
  final pulumi.Input<String> location;
  /// Defines the SAP Product type.
  final pulumi.Input<String> sapProduct;

  /// Creates a new [GetSapVirtualInstanceInvokeAvailabilityZoneDetailsArgs].
  /// [appLocation] The geo-location where the SAP resources will be created.
  /// [databaseType] The database type. Eg: HANA, DB2, etc
  /// [location] The name of the Azure region.
  /// [sapProduct] Defines the SAP Product type.
  GetSapVirtualInstanceInvokeAvailabilityZoneDetailsArgs({
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

  factory GetSapVirtualInstanceInvokeAvailabilityZoneDetailsArgs.fromMap(Map<String, dynamic> map) {
    return GetSapVirtualInstanceInvokeAvailabilityZoneDetailsArgs(
      appLocation: pulumi.Output.create<String>(map['appLocation'] as String),
      databaseType: pulumi.Output.create<String>(map['databaseType'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      sapProduct: pulumi.Output.create<String>(map['sapProduct'] as String),
    );
  }
}

