// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceTypesTypeRegionPrice {
  final double hourly;
  /// The ID representing the Linode Type.
  final String id;
  final double monthly;

  /// Creates a new [GetInstanceTypesTypeRegionPrice].
  /// [hourly] Required.
  /// [id] The ID representing the Linode Type.
  /// [monthly] Required.
  GetInstanceTypesTypeRegionPrice({
    required this.hourly,
    required this.id,
    required this.monthly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hourly': hourly,
      'id': id,
      'monthly': monthly,
    };
  }

  factory GetInstanceTypesTypeRegionPrice.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypesTypeRegionPrice(
      hourly: map['hourly'] as double,
      id: map['id'] as String,
      monthly: map['monthly'] as double,
    );
  }
}

