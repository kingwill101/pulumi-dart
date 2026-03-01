// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceTypePrice {
  /// Cost (in US dollars) per hour.
  final double hourly;
  /// Cost (in US dollars) per month.
  final double monthly;

  /// Creates a new [GetInstanceTypePrice].
  /// [hourly] Cost (in US dollars) per hour.
  /// [monthly] Cost (in US dollars) per month.
  GetInstanceTypePrice({
    required this.hourly,
    required this.monthly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hourly': hourly,
      'monthly': monthly,
    };
  }

  factory GetInstanceTypePrice.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypePrice(
      hourly: map['hourly'] as double,
      monthly: map['monthly'] as double,
    );
  }
}

