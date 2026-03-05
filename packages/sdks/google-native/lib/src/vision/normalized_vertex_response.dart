// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.
class NormalizedVertexResponse {
  /// X coordinate.
  final pulumi.Input<double> x;
  /// Y coordinate.
  final pulumi.Input<double> y;

  /// Creates a new [NormalizedVertexResponse].
  /// [x] X coordinate.
  /// [y] Y coordinate.
  NormalizedVertexResponse({
    required this.x,
    required this.y,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x': x,
      'y': y,
    };
  }

  factory NormalizedVertexResponse.fromMap(Map<String, dynamic> map) {
    return NormalizedVertexResponse(
      x: pulumi.Input.fromValue(map['x'] as double),
      y: pulumi.Input.fromValue(map['y'] as double),
    );
  }
}

