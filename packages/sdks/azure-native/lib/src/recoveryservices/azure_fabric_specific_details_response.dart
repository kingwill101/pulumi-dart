// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'a2_aextended_location_details_response.dart';
import 'a2_afabric_specific_location_details_response.dart';
import 'a2_azone_details_response.dart';

/// Azure Fabric Specific Details.
class AzureFabricSpecificDetailsResponse {
  /// The container Ids for the Azure fabric.
  final pulumi.Input<List<String>>? containerIds;
  /// The ExtendedLocations.
  final pulumi.Input<List<A2AExtendedLocationDetailsResponse>>? extendedLocations;
  /// Gets the class type. Overridden in derived classes.
  /// Expected value is 'Azure'.
  final pulumi.Input<String> instanceType;
  /// The Location for the Azure fabric.
  final pulumi.Input<String>? location;
  /// The location details.
  final pulumi.Input<List<A2AFabricSpecificLocationDetailsResponse>>? locationDetails;
  /// The zones.
  final pulumi.Input<List<A2AZoneDetailsResponse>>? zones;

  /// Creates a new [AzureFabricSpecificDetailsResponse].
  /// [containerIds] The container Ids for the Azure fabric.
  /// [extendedLocations] The ExtendedLocations.
  /// [instanceType] Gets the class type. Overridden in derived classes.
  /// [location] The Location for the Azure fabric.
  /// [locationDetails] The location details.
  /// [zones] The zones.
  const AzureFabricSpecificDetailsResponse({
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
      'extendedLocations': ?pulumi.Input.mapOptionalInputValue<List<A2AExtendedLocationDetailsResponse>, List<Map<String, dynamic>>>(extendedLocations, (value) => pulumi.Input.encodeList<A2AExtendedLocationDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceType': instanceType,
      'location': ?location,
      'locationDetails': ?pulumi.Input.mapOptionalInputValue<List<A2AFabricSpecificLocationDetailsResponse>, List<Map<String, dynamic>>>(locationDetails, (value) => pulumi.Input.encodeList<A2AFabricSpecificLocationDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zones': ?pulumi.Input.mapOptionalInputValue<List<A2AZoneDetailsResponse>, List<Map<String, dynamic>>>(zones, (value) => pulumi.Input.encodeList<A2AZoneDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AzureFabricSpecificDetailsResponse.fromMap(Map<String, dynamic> map) {
    return AzureFabricSpecificDetailsResponse(
      containerIds: (() { final guardedValue = map['containerIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      extendedLocations: (() { final guardedValue = map['extendedLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<A2AExtendedLocationDetailsResponse>(guardedValue, (value) => A2AExtendedLocationDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locationDetails: (() { final guardedValue = map['locationDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<A2AFabricSpecificLocationDetailsResponse>(guardedValue, (value) => A2AFabricSpecificLocationDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<A2AZoneDetailsResponse>(guardedValue, (value) => A2AZoneDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

