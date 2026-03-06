// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// 2D normalized coordinates. Default: `{0.0, 0.0}`
class NormalizedCoordinate {
  /// Normalized x coordinate.
  final pulumi.Input<double>? x;
  /// Normalized y coordinate.
  final pulumi.Input<double>? y;

  /// Creates a new [NormalizedCoordinate].
  /// [x] Normalized x coordinate.
  /// [y] Normalized y coordinate.
  const NormalizedCoordinate({
    this.x,
    this.y,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x': ?x,
      'y': ?y,
    };
  }

  factory NormalizedCoordinate.fromMap(Map<String, dynamic> map) {
    return NormalizedCoordinate(
      x: (() { final guardedValue = map['x']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      y: (() { final guardedValue = map['y']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

