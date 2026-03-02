// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLkeTypesTypePrice {
  /// Cost (in US dollars) per hour.
  final pulumi.Input<double> hourly;
  /// Cost (in US dollars) per month.
  final pulumi.Input<double> monthly;

  /// Creates a new [GetLkeTypesTypePrice].
  /// [hourly] Cost (in US dollars) per hour.
  /// [monthly] Cost (in US dollars) per month.
  GetLkeTypesTypePrice({
    required this.hourly,
    required this.monthly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hourly': hourly,
      'monthly': monthly,
    };
  }

  factory GetLkeTypesTypePrice.fromMap(Map<String, dynamic> map) {
    return GetLkeTypesTypePrice(
      hourly: (map['hourly'] as double).input(),
      monthly: (map['monthly'] as double).input(),
    );
  }
}

