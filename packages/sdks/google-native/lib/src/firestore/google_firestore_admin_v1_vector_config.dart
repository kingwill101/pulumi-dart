// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The index configuration to support vector search operations
class GoogleFirestoreAdminV1VectorConfig {
  /// The vector dimension this configuration applies to. The resulting index will only include vectors of this dimension, and can be used for vector search with the same dimension.
  final pulumi.Input<int> dimension;
  /// Indicates the vector index is a flat index.
  final pulumi.Input<Map<String, dynamic>>? flat;

  /// Creates a new [GoogleFirestoreAdminV1VectorConfig].
  /// [dimension] The vector dimension this configuration applies to. The resulting index will only include vectors of this dimension, and can be used for vector search with the same dimension.
  /// [flat] Indicates the vector index is a flat index.
  const GoogleFirestoreAdminV1VectorConfig({
    required this.dimension,
    this.flat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimension': dimension,
      'flat': ?flat,
    };
  }

  factory GoogleFirestoreAdminV1VectorConfig.fromMap(Map<String, dynamic> map) {
    return GoogleFirestoreAdminV1VectorConfig(
      dimension: pulumi.Input.fromValue(map['dimension'] as int),
      flat: (() { final guardedValue = map['flat']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
