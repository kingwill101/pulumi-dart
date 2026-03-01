// ignore_for_file: unused_element, unnecessary_cast


/// A 2D coordinate in an image. The origin is the top-left.
class Vertex {
  /// X coordinate.
  final double? x;
  /// Y coordinate.
  final double? y;

  /// Creates a new [Vertex].
  /// [x] X coordinate.
  /// [y] Y coordinate.
  Vertex({
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
      x: map['x'] == null ? null : map['x'] as double,
      y: map['y'] == null ? null : map['y'] as double,
    );
  }
}

