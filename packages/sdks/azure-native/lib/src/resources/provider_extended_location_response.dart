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
  const ProviderExtendedLocationResponse({
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
      extendedLocations: (() { final guardedValue = map['extendedLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
