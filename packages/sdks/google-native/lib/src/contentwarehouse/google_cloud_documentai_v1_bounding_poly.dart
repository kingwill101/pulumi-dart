// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_normalized_vertex.dart';
import 'google_cloud_documentai_v1_vertex.dart';

/// A bounding polygon for the detected image annotation.
class GoogleCloudDocumentaiV1BoundingPoly {
  /// The bounding polygon normalized vertices.
  final pulumi.Input<List<GoogleCloudDocumentaiV1NormalizedVertex>>? normalizedVertices;
  /// The bounding polygon vertices.
  final pulumi.Input<List<GoogleCloudDocumentaiV1Vertex>>? vertices;

  /// Creates a new [GoogleCloudDocumentaiV1BoundingPoly].
  /// [normalizedVertices] The bounding polygon normalized vertices.
  /// [vertices] The bounding polygon vertices.
  const GoogleCloudDocumentaiV1BoundingPoly({
    this.normalizedVertices,
    this.vertices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'normalizedVertices': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDocumentaiV1NormalizedVertex>, List<Map<String, dynamic>>>(normalizedVertices, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1NormalizedVertex, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vertices': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDocumentaiV1Vertex>, List<Map<String, dynamic>>>(vertices, (value) => pulumi.Input.encodeList<GoogleCloudDocumentaiV1Vertex, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDocumentaiV1BoundingPoly.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1BoundingPoly(
      normalizedVertices: (() { final guardedValue = map['normalizedVertices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1NormalizedVertex>(guardedValue, (value) => GoogleCloudDocumentaiV1NormalizedVertex.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vertices: (() { final guardedValue = map['vertices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDocumentaiV1Vertex>(guardedValue, (value) => GoogleCloudDocumentaiV1Vertex.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

