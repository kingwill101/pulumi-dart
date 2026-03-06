// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'normalized_vertex.dart';
import 'vertex.dart';

/// A bounding polygon for the detected image annotation.
class BoundingPoly {
  /// The bounding polygon normalized vertices.
  final pulumi.Input<List<NormalizedVertex>>? normalizedVertices;
  /// The bounding polygon vertices.
  final pulumi.Input<List<Vertex>>? vertices;

  /// Creates a new [BoundingPoly].
  /// [normalizedVertices] The bounding polygon normalized vertices.
  /// [vertices] The bounding polygon vertices.
  const BoundingPoly({
    this.normalizedVertices,
    this.vertices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'normalizedVertices': ?pulumi.Input.mapOptionalInputValue<List<NormalizedVertex>, List<Map<String, dynamic>>>(normalizedVertices, (value) => pulumi.Input.encodeList<NormalizedVertex, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vertices': ?pulumi.Input.mapOptionalInputValue<List<Vertex>, List<Map<String, dynamic>>>(vertices, (value) => pulumi.Input.encodeList<Vertex, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BoundingPoly.fromMap(Map<String, dynamic> map) {
    return BoundingPoly(
      normalizedVertices: (() { final guardedValue = map['normalizedVertices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NormalizedVertex>(guardedValue, (value) => NormalizedVertex.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vertices: (() { final guardedValue = map['vertices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Vertex>(guardedValue, (value) => Vertex.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

