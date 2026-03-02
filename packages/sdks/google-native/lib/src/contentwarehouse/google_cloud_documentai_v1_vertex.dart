// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A vertex represents a 2D point in the image. NOTE: the vertex coordinates are in the same scale as the original image.
class GoogleCloudDocumentaiV1Vertex {
  /// X coordinate.
  final pulumi.Input<int>? x;
  /// Y coordinate (starts from the top of the image).
  final pulumi.Input<int>? y;

  /// Creates a new [GoogleCloudDocumentaiV1Vertex].
  /// [x] X coordinate.
  /// [y] Y coordinate (starts from the top of the image).
  GoogleCloudDocumentaiV1Vertex({
    this.x,
    this.y,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x': ?x,
      'y': ?y,
    };
  }

  factory GoogleCloudDocumentaiV1Vertex.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1Vertex(
      x: map['x'] == null ? null : (map['x']! as int).input(),
      y: map['y'] == null ? null : (map['y']! as int).input(),
    );
  }
}

