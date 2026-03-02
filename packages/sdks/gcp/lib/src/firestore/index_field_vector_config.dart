// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IndexFieldVectorConfig {
  /// The resulting index will only include vectors of this dimension, and can be used for vector search
  /// with the same dimension.
  final pulumi.Input<int>? dimension;
  /// Indicates the vector index is a flat index.
  final pulumi.Input<Map<String, dynamic>>? flat;

  /// Creates a new [IndexFieldVectorConfig].
  /// [dimension] The resulting index will only include vectors of this dimension, and can be used for vector search
  /// [flat] Indicates the vector index is a flat index.
  IndexFieldVectorConfig({
    this.dimension,
    this.flat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimension': ?dimension,
      'flat': ?flat,
    };
  }

  factory IndexFieldVectorConfig.fromMap(Map<String, dynamic> map) {
    return IndexFieldVectorConfig(
      dimension: map['dimension'] == null ? null : (map['dimension']! as int).input(),
      flat: map['flat'] == null ? null : ((map['flat']! as Map).cast<String, dynamic>()).input(),
    );
  }
}

