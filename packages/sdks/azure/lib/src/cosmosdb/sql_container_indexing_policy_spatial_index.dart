// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SqlContainerIndexingPolicySpatialIndex {
  /// Path for which the indexing behaviour applies to. According to the service design, all spatial types including `LineString`, `MultiPolygon`, `Point`, and `Polygon` will be applied to the path.
  final pulumi.Input<String> path;
  /// A set of spatial types of the path.
  final pulumi.Input<List<String>>? types;

  /// Creates a new [SqlContainerIndexingPolicySpatialIndex].
  /// [path] Path for which the indexing behaviour applies to. According to the service design, all spatial types including `LineString`, `MultiPolygon`, `Point`, and `Polygon` will be applied to the path.
  /// [types] A set of spatial types of the path.
  SqlContainerIndexingPolicySpatialIndex({
    required this.path,
    this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'types': ?types,
    };
  }

  factory SqlContainerIndexingPolicySpatialIndex.fromMap(Map<String, dynamic> map) {
    return SqlContainerIndexingPolicySpatialIndex(
      path: (map['path'] as String).input(),
      types: map['types'] == null ? null : ((map['types'] as List).cast<String>()).input(),
    );
  }
}

