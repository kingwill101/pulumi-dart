// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceTypeRegionPrice {
  final pulumi.Input<double> hourly;
  /// Label used to identify instance type
  final pulumi.Input<String> id;
  final pulumi.Input<double> monthly;

  /// Creates a new [GetInstanceTypeRegionPrice].
  /// [hourly] Required.
  /// [id] Label used to identify instance type
  /// [monthly] Required.
  const GetInstanceTypeRegionPrice({
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

  factory GetInstanceTypeRegionPrice.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeRegionPrice(
      hourly: pulumi.Input.fromValue(map['hourly'] as double),
      id: pulumi.Input.fromValue(map['id'] as String),
      monthly: pulumi.Input.fromValue(map['monthly'] as double),
    );
  }
}

