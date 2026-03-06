// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lat_lng_response.dart';
import 'postal_address_response.dart';

/// Output only. A resource that represents a location with full geographic information.
class LocationResponse {
  /// An object representing a latitude/longitude pair.
  final pulumi.Input<LatLngResponse> latLng;
  /// The type of a location, which corresponds to the address lines field of PostalAddress. For example, "Downtown, Atlanta, GA, USA" has a type of LocationType#NEIGHBORHOOD, and "Kansas City, KS, USA" has a type of LocationType#LOCALITY.
  final pulumi.Input<String> locationType;
  /// Postal address of the location that includes human readable information, such as postal delivery and payments addresses. Given a postal address, a postal service can deliver items to a premises, P.O. Box, or other delivery location.
  final pulumi.Input<PostalAddressResponse> postalAddress;
  /// Radius in miles of the job location. This value is derived from the location bounding box in which a circle with the specified radius centered from LatLng covers the area associated with the job location. For example, currently, "Mountain View, CA, USA" has a radius of 6.17 miles.
  final pulumi.Input<double> radiusInMiles;

  /// Creates a new [LocationResponse].
  /// [latLng] An object representing a latitude/longitude pair.
  /// [locationType] The type of a location, which corresponds to the address lines field of PostalAddress. For example, "Downtown, Atlanta, GA, USA" has a type of LocationType#NEIGHBORHOOD, and "Kansas City, KS, USA" has a type of LocationType#LOCALITY.
  /// [postalAddress] Postal address of the location that includes human readable information, such as postal delivery and payments addresses. Given a postal address, a postal service can deliver items to a premises, P.O. Box, or other delivery location.
  /// [radiusInMiles] Radius in miles of the job location. This value is derived from the location bounding box in which a circle with the specified radius centered from LatLng covers the area associated with the job location. For example, currently, "Mountain View, CA, USA" has a radius of 6.17 miles.
  const LocationResponse({
    required this.latLng,
    required this.locationType,
    required this.postalAddress,
    required this.radiusInMiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latLng': pulumi.Input.mapInputValue<LatLngResponse, Map<String, dynamic>>(latLng, (value) => value.toMap()),
      'locationType': locationType,
      'postalAddress': pulumi.Input.mapInputValue<PostalAddressResponse, Map<String, dynamic>>(postalAddress, (value) => value.toMap()),
      'radiusInMiles': radiusInMiles,
    };
  }

  factory LocationResponse.fromMap(Map<String, dynamic> map) {
    return LocationResponse(
      latLng: pulumi.Input.fromValue(LatLngResponse.fromMap((map['latLng']! as Map).cast<String, dynamic>())),
      locationType: pulumi.Input.fromValue(map['locationType'] as String),
      postalAddress: pulumi.Input.fromValue(PostalAddressResponse.fromMap((map['postalAddress']! as Map).cast<String, dynamic>())),
      radiusInMiles: pulumi.Input.fromValue(map['radiusInMiles'] as double),
    );
  }
}

