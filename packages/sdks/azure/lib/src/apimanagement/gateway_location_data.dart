// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GatewayLocationData {
  /// The city or locality where the resource is located.
  final pulumi.Input<String>? city;
  /// The district, state, or province where the resource is located.
  final pulumi.Input<String>? district;
  /// A canonical name for the geographic or physical location.
  final pulumi.Input<String> name;
  /// The country or region where the resource is located.
  final pulumi.Input<String>? region;

  /// Creates a new [GatewayLocationData].
  /// [city] The city or locality where the resource is located.
  /// [district] The district, state, or province where the resource is located.
  /// [name] A canonical name for the geographic or physical location.
  /// [region] The country or region where the resource is located.
  GatewayLocationData({
    this.city,
    this.district,
    required this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'city': ?city,
      'district': ?district,
      'name': name,
      'region': ?region,
    };
  }

  factory GatewayLocationData.fromMap(Map<String, dynamic> map) {
    return GatewayLocationData(
      city: map['city'] == null ? null : (map['city']! as String).input(),
      district: map['district'] == null ? null : (map['district']! as String).input(),
      name: (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
    );
  }
}

