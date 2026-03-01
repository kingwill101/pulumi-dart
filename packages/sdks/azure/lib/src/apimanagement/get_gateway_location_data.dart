// ignore_for_file: unused_element, unnecessary_cast


class GetGatewayLocationData {
  /// The city or locality where the resource is located.
  final String city;
  /// The district, state, or province where the resource is located.
  final String district;
  /// The name of the API Management Gateway.
  final String name;
  final String region;

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
      city: map['city'] as String,
      district: map['district'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
    );
  }
}

