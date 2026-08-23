// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The index configuration to support vector search operations
class GoogleFirestoreAdminV1VectorConfigResponse {
  /// The vector dimension this configuration applies to. The resulting index will only include vectors of this dimension, and can be used for vector search with the same dimension.
  final pulumi.Input<int> dimension;
  /// Indicates the vector index is a flat index.
  final pulumi.Input<Map<String, dynamic>> flat;

  /// Creates a new [GoogleFirestoreAdminV1VectorConfigResponse].
  /// [dimension] The vector dimension this configuration applies to. The resulting index will only include vectors of this dimension, and can be used for vector search with the same dimension.
  /// [flat] Indicates the vector index is a flat index.
  const GoogleFirestoreAdminV1VectorConfigResponse({
    required this.dimension,
    required this.flat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimension': dimension,
      'flat': flat,
    };
  }

  factory GoogleFirestoreAdminV1VectorConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleFirestoreAdminV1VectorConfigResponse(
      dimension: pulumi.Input.fromValue(map['dimension'] as int),
      flat: pulumi.Input.fromValue((map['flat']! as Map).cast<String, dynamic>()),
    );
  }
}
