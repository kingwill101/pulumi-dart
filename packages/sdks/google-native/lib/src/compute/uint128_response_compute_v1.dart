// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Uint128ResponseComputeV1 {
  final pulumi.Input<String> high;
  final pulumi.Input<String> low;

  /// Creates a new [Uint128ResponseComputeV1].
  /// [high] Required.
  /// [low] Required.
  Uint128ResponseComputeV1({required this.high, required this.low});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'high': high, 'low': low};
  }

  factory Uint128ResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return Uint128ResponseComputeV1(
      high: pulumi.Input.fromValue(map['high'] as String),
      low: pulumi.Input.fromValue(map['low'] as String),
    );
  }
}
