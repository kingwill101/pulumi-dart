// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGatewayLocationData {
  /// The city or locality where the resource is located.
  final pulumi.Input<String> city;
  /// The district, state, or province where the resource is located.
  final pulumi.Input<String> district;
  /// The name of the API Management Gateway.
  final pulumi.Input<String> name;
  final pulumi.Input<String> region;

  /// Creates a new [GetGatewayLocationData].
  /// [city] The city or locality where the resource is located.
  /// [district] The district, state, or province where the resource is located.
  /// [name] The name of the API Management Gateway.
  /// [region] Required.
  GetGatewayLocationData({
    required this.city,
    required this.district,
    required this.name,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'city': city,
      'district': district,
      'name': name,
      'region': region,
    };
  }

  factory GetGatewayLocationData.fromMap(Map<String, dynamic> map) {
    return GetGatewayLocationData(
      city: (map['city'] as String).input(),
      district: (map['district'] as String).input(),
      name: (map['name'] as String).input(),
      region: (map['region'] as String).input(),
    );
  }
}

