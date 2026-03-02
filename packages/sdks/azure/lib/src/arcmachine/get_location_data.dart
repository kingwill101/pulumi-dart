// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLocationData {
  /// The city or locality where the resource is located.
  final pulumi.Input<String> city;
  /// The country or region where the resource is located.
  final pulumi.Input<String> countryOrRegion;
  /// The district, state, or province where the resource is located.
  final pulumi.Input<String> district;
  /// The name of this Azure Arc machine.
  final pulumi.Input<String> name;

  /// Creates a new [GetLocationData].
  /// [city] The city or locality where the resource is located.
  /// [countryOrRegion] The country or region where the resource is located.
  /// [district] The district, state, or province where the resource is located.
  /// [name] The name of this Azure Arc machine.
  GetLocationData({
    required this.city,
    required this.countryOrRegion,
    required this.district,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'city': city,
      'countryOrRegion': countryOrRegion,
      'district': district,
      'name': name,
    };
  }

  factory GetLocationData.fromMap(Map<String, dynamic> map) {
    return GetLocationData(
      city: (map['city'] as String).input(),
      countryOrRegion: (map['countryOrRegion'] as String).input(),
      district: (map['district'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

