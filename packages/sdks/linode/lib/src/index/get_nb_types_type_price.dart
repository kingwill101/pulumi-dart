// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNbTypesTypePrice {
  final pulumi.Input<double> hourly;
  final pulumi.Input<double> monthly;

  /// Creates a new [GetNbTypesTypePrice].
  /// [hourly] Required.
  /// [monthly] Required.
  GetNbTypesTypePrice({
    required this.hourly,
    required this.monthly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hourly': hourly,
      'monthly': monthly,
    };
  }

  factory GetNbTypesTypePrice.fromMap(Map<String, dynamic> map) {
    return GetNbTypesTypePrice(
      hourly: (map['hourly'] as double).input(),
      monthly: (map['monthly'] as double).input(),
    );
  }
}

