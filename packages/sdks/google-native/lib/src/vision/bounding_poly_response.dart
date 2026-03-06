// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'normalized_vertex_response.dart';
import 'vertex_response.dart';

/// A bounding polygon for the detected image annotation.
class BoundingPolyResponse {
  /// The bounding polygon normalized vertices.
  final pulumi.Input<List<NormalizedVertexResponse>> normalizedVertices;
  /// The bounding polygon vertices.
  final pulumi.Input<List<VertexResponse>> vertices;

  /// Creates a new [BoundingPolyResponse].
  /// [normalizedVertices] The bounding polygon normalized vertices.
  /// [vertices] The bounding polygon vertices.
  const BoundingPolyResponse({
    required this.normalizedVertices,
    required this.vertices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'normalizedVertices': pulumi.Input.mapInputValue<List<NormalizedVertexResponse>, List<Map<String, dynamic>>>(normalizedVertices, (value) => pulumi.Input.encodeList<NormalizedVertexResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vertices': pulumi.Input.mapInputValue<List<VertexResponse>, List<Map<String, dynamic>>>(vertices, (value) => pulumi.Input.encodeList<VertexResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BoundingPolyResponse.fromMap(Map<String, dynamic> map) {
    return BoundingPolyResponse(
      normalizedVertices: pulumi.Input.fromValue(pulumi.Input.decodeList<NormalizedVertexResponse>(map['normalizedVertices']!, (value) => NormalizedVertexResponse.fromMap((value as Map).cast<String, dynamic>()))),
      vertices: pulumi.Input.fromValue(pulumi.Input.decodeList<VertexResponse>(map['vertices']!, (value) => VertexResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

