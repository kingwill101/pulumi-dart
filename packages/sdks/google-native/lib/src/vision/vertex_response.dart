// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A vertex represents a 2D point in the image. NOTE: the vertex coordinates are in the same scale as the original image.
class VertexResponse {
  /// X coordinate.
  final pulumi.Input<int> x;

  /// Y coordinate.
  final pulumi.Input<int> y;

  /// Creates a new [VertexResponse].
  /// [x] X coordinate.
  /// [y] Y coordinate.
  VertexResponse({required this.x, required this.y});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'x': x, 'y': y};
  }

  factory VertexResponse.fromMap(Map<String, dynamic> map) {
    return VertexResponse(
      x: pulumi.Input.fromValue(map['x'] as int),
      y: pulumi.Input.fromValue(map['y'] as int),
    );
  }
}
