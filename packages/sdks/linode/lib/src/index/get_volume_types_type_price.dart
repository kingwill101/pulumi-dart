// ignore_for_file: unused_element, unnecessary_cast


class GetVolumeTypesTypePrice {
  /// Cost (in US dollars) per hour.
  final double hourly;
  /// Cost (in US dollars) per month.
  final double monthly;

  /// Creates a new [GetVolumeTypesTypePrice].
  /// [hourly] Cost (in US dollars) per hour.
  /// [monthly] Cost (in US dollars) per month.
  GetVolumeTypesTypePrice({
    required this.hourly,
    required this.monthly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hourly': hourly,
      'monthly': monthly,
    };
  }

  factory GetVolumeTypesTypePrice.fromMap(Map<String, dynamic> map) {
    return GetVolumeTypesTypePrice(
      hourly: map['hourly'] as double,
      monthly: map['monthly'] as double,
    );
  }
}

