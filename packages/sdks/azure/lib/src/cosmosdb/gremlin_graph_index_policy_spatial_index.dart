// ignore_for_file: unused_element, unnecessary_cast


class GremlinGraphIndexPolicySpatialIndex {
  /// Path for which the indexing behaviour applies to. According to the service design, all spatial types including `LineString`, `MultiPolygon`, `Point`, and `Polygon` will be applied to the path.
  final String path;
  final List<String>? types;

  /// Creates a new [GremlinGraphIndexPolicySpatialIndex].
  /// [path] Path for which the indexing behaviour applies to. According to the service design, all spatial types including `LineString`, `MultiPolygon`, `Point`, and `Polygon` will be applied to the path.
  /// [types] Optional.
  GremlinGraphIndexPolicySpatialIndex({
    required this.path,
    this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'types': ?types,
    };
  }

  factory GremlinGraphIndexPolicySpatialIndex.fromMap(Map<String, dynamic> map) {
    return GremlinGraphIndexPolicySpatialIndex(
      path: map['path'] as String,
      types: map['types'] == null ? null : (map['types'] as List).cast<String>(),
    );
  }
}

