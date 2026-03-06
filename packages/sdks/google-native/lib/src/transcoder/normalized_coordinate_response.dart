// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// 2D normalized coordinates. Default: `{0.0, 0.0}`
class NormalizedCoordinateResponse {
  /// Normalized x coordinate.
  final pulumi.Input<double> x;
  /// Normalized y coordinate.
  final pulumi.Input<double> y;

  /// Creates a new [NormalizedCoordinateResponse].
  /// [x] Normalized x coordinate.
  /// [y] Normalized y coordinate.
  const NormalizedCoordinateResponse({
    required this.x,
    required this.y,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x': x,
      'y': y,
    };
  }

  factory NormalizedCoordinateResponse.fromMap(Map<String, dynamic> map) {
    return NormalizedCoordinateResponse(
      x: pulumi.Input.fromValue(map['x'] as double),
      y: pulumi.Input.fromValue(map['y'] as double),
    );
  }
}

