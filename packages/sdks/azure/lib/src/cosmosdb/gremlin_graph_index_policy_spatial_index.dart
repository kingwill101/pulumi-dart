// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GremlinGraphIndexPolicySpatialIndex {
  /// Path for which the indexing behaviour applies to. According to the service design, all spatial types including `LineString`, `MultiPolygon`, `Point`, and `Polygon` will be applied to the path.
  final pulumi.Input<String> path;
  final pulumi.Input<List<String>>? types;

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
      path: (map['path'] as String).input(),
      types: map['types'] == null ? null : ((map['types']! as List).cast<String>()).input(),
    );
  }
}

