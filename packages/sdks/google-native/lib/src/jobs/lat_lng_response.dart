// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An object that represents a latitude/longitude pair. This is expressed as a pair of doubles to represent degrees latitude and degrees longitude. Unless specified otherwise, this object must conform to the WGS84 standard. Values must be within normalized ranges.
class LatLngResponse {
  /// The latitude in degrees. It must be in the range [-90.0, +90.0].
  final pulumi.Input<double> latitude;
  /// The longitude in degrees. It must be in the range [-180.0, +180.0].
  final pulumi.Input<double> longitude;

  /// Creates a new [LatLngResponse].
  /// [latitude] The latitude in degrees. It must be in the range [-90.0, +90.0].
  /// [longitude] The longitude in degrees. It must be in the range [-180.0, +180.0].
  LatLngResponse({
    required this.latitude,
    required this.longitude,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  factory LatLngResponse.fromMap(Map<String, dynamic> map) {
    return LatLngResponse(
      latitude: pulumi.Input.fromValue(map['latitude'] as double),
      longitude: pulumi.Input.fromValue(map['longitude'] as double),
    );
  }
}

