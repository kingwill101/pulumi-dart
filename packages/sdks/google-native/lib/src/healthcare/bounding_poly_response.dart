// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vertex_response.dart';

/// A bounding polygon for the detected image annotation.
class BoundingPolyResponse {
  /// A description of this polygon.
  final pulumi.Input<String> label;

  /// List of the vertices of this polygon.
  final pulumi.Input<List<VertexResponse>> vertices;

  /// Creates a new [BoundingPolyResponse].
  /// [label] A description of this polygon.
  /// [vertices] List of the vertices of this polygon.
  BoundingPolyResponse({required this.label, required this.vertices});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
      'vertices':
          pulumi.Input.mapInputValue<
            List<VertexResponse>,
            List<Map<String, dynamic>>
          >(
            vertices,
            (value) =>
                pulumi.Input.encodeList<VertexResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory BoundingPolyResponse.fromMap(Map<String, dynamic> map) {
    return BoundingPolyResponse(
      label: pulumi.Input.fromValue(map['label'] as String),
      vertices: pulumi.Input.fromValue(
        pulumi.Input.decodeList<VertexResponse>(
          map['vertices']!,
          (value) =>
              VertexResponse.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
    );
  }
}
