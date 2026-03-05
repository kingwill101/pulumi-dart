// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.
class NormalizedVertex {
  /// X coordinate.
  final pulumi.Input<double>? x;
  /// Y coordinate.
  final pulumi.Input<double>? y;

  /// Creates a new [NormalizedVertex].
  /// [x] X coordinate.
  /// [y] Y coordinate.
  NormalizedVertex({
    this.x,
    this.y,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x': ?x,
      'y': ?y,
    };
  }

  factory NormalizedVertex.fromMap(Map<String, dynamic> map) {
    return NormalizedVertex(
      x: (() { final guardedValue = map['x']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      y: (() { final guardedValue = map['y']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

