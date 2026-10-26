// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A vertex represents a 2D point in the image. NOTE: the vertex coordinates are in the same scale as the original image.
class Vertex {
  /// X coordinate.
  final pulumi.Input<int?>? x;
  /// Y coordinate.
  final pulumi.Input<int?>? y;

  /// Creates a new [Vertex].
  /// [x] X coordinate.
  /// [y] Y coordinate.
  const Vertex({
    this.x,
    this.y,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x': ?x,
      'y': ?y,
    };
  }

  factory Vertex.fromMap(Map<String, dynamic> map) {
    return Vertex(
      x: (() { final guardedValue = map['x']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      y: (() { final guardedValue = map['y']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
