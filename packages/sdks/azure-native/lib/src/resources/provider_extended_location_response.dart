// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The provider extended location.
class ProviderExtendedLocationResponse {
  /// The extended locations for the azure location.
  final pulumi.Input<List<String>>? extendedLocations;
  /// The azure location.
  final pulumi.Input<String>? location;
  /// The extended location type.
  final pulumi.Input<String>? type;

  /// Creates a new [ProviderExtendedLocationResponse].
  /// [extendedLocations] The extended locations for the azure location.
  /// [location] The azure location.
  /// [type] The extended location type.
  ProviderExtendedLocationResponse({
    this.extendedLocations,
    this.location,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocations': ?extendedLocations,
      'location': ?location,
      'type': ?type,
    };
  }

  factory ProviderExtendedLocationResponse.fromMap(Map<String, dynamic> map) {
    return ProviderExtendedLocationResponse(
      extendedLocations: map['extendedLocations'] == null ? null : ((map['extendedLocations']! as List).cast<String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

