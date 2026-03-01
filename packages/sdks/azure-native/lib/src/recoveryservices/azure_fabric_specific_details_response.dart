// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'a2_aextended_location_details_response.dart';
import 'a2_afabric_specific_location_details_response.dart';
import 'a2_azone_details_response.dart';

/// Azure Fabric Specific Details.
class AzureFabricSpecificDetailsResponse {
  /// The container Ids for the Azure fabric.
  final List<String>? containerIds;
  /// The ExtendedLocations.
  final List<A2AExtendedLocationDetailsResponse>? extendedLocations;
  /// Gets the class type. Overridden in derived classes.
  /// Expected value is 'Azure'.
  final String instanceType;
  /// The Location for the Azure fabric.
  final String? location;
  /// The location details.
  final List<A2AFabricSpecificLocationDetailsResponse>? locationDetails;
  /// The zones.
  final List<A2AZoneDetailsResponse>? zones;

  /// Creates a new [AzureFabricSpecificDetailsResponse].
  /// [containerIds] The container Ids for the Azure fabric.
  /// [extendedLocations] The ExtendedLocations.
  /// [instanceType] Gets the class type. Overridden in derived classes.
  /// [location] The Location for the Azure fabric.
  /// [locationDetails] The location details.
  /// [zones] The zones.
  AzureFabricSpecificDetailsResponse({
    this.containerIds,
    this.extendedLocations,
    required this.instanceType,
    this.location,
    this.locationDetails,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerIds': ?containerIds,
      'extendedLocations': ?extendedLocations == null ? null : pulumi.Input.encodeList<A2AExtendedLocationDetailsResponse, Map<String, dynamic>>(extendedLocations!, (value) => value.toMap()),
      'instanceType': instanceType,
      'location': ?location,
      'locationDetails': ?locationDetails == null ? null : pulumi.Input.encodeList<A2AFabricSpecificLocationDetailsResponse, Map<String, dynamic>>(locationDetails!, (value) => value.toMap()),
      'zones': ?zones == null ? null : pulumi.Input.encodeList<A2AZoneDetailsResponse, Map<String, dynamic>>(zones!, (value) => value.toMap()),
    };
  }

  factory AzureFabricSpecificDetailsResponse.fromMap(Map<String, dynamic> map) {
    return AzureFabricSpecificDetailsResponse(
      containerIds: map['containerIds'] == null ? null : (map['containerIds'] as List).cast<String>(),
      extendedLocations: map['extendedLocations'] == null ? null : pulumi.Input.decodeList<A2AExtendedLocationDetailsResponse>(map['extendedLocations'], (value) => A2AExtendedLocationDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      instanceType: map['instanceType'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      locationDetails: map['locationDetails'] == null ? null : pulumi.Input.decodeList<A2AFabricSpecificLocationDetailsResponse>(map['locationDetails'], (value) => A2AFabricSpecificLocationDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      zones: map['zones'] == null ? null : pulumi.Input.decodeList<A2AZoneDetailsResponse>(map['zones'], (value) => A2AZoneDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

