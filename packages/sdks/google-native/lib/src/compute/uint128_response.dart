// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Uint128Response {
  final pulumi.Input<String> high;
  final pulumi.Input<String> low;

  /// Creates a new [Uint128Response].
  /// [high] Required.
  /// [low] Required.
  Uint128Response({
    required this.high,
    required this.low,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'high': high,
      'low': low,
    };
  }

  factory Uint128Response.fromMap(Map<String, dynamic> map) {
    return Uint128Response(
      high: (map['high'] as String).input(),
      low: (map['low'] as String).input(),
    );
  }
}

