// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNbTypesTypeRegionPrice {
  final pulumi.Input<double> hourly;
  final pulumi.Input<String> id;
  final pulumi.Input<double> monthly;

  /// Creates a new [GetNbTypesTypeRegionPrice].
  /// [hourly] Required.
  /// [id] Required.
  /// [monthly] Required.
  const GetNbTypesTypeRegionPrice({
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

  factory GetNbTypesTypeRegionPrice.fromMap(Map<String, dynamic> map) {
    return GetNbTypesTypeRegionPrice(
      hourly: pulumi.Input.fromValue(map['hourly'] as double),
      id: pulumi.Input.fromValue(map['id'] as String),
      monthly: pulumi.Input.fromValue(map['monthly'] as double),
    );
  }
}

