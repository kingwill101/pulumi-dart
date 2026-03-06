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
  const GetSapVirtualInstanceInvokeAvailabilityZoneDetailsArgs({
    required this.appLocation,
    required this.databaseType,
    required this.location,
    required this.sapProduct,
  });

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
      appLocation: pulumi.Input.fromValue(map['appLocation'] as String),
      databaseType: pulumi.Input.fromValue(map['databaseType'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      sapProduct: pulumi.Input.fromValue(map['sapProduct'] as String),
    );
  }
}

