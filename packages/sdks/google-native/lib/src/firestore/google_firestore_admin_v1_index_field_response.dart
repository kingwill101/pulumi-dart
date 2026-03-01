// ignore_for_file: unused_element, unnecessary_cast

import 'google_firestore_admin_v1_vector_config_response.dart';

/// A field in an index. The field_path describes which field is indexed, the value_mode describes how the field value is indexed.
class GoogleFirestoreAdminV1IndexFieldResponse {
  /// Indicates that this field supports operations on `array_value`s.
  final String arrayConfig;
  /// Can be __name__. For single field indexes, this must match the name of the field or may be omitted.
  final String fieldPath;
  /// Indicates that this field supports ordering by the specified order or comparing using =, !=, <, <=, >, >=.
  final String order;
  /// Indicates that this field supports nearest neighbors and distance operations on vector.
  final GoogleFirestoreAdminV1VectorConfigResponse vectorConfig;

  /// Creates a new [GoogleFirestoreAdminV1IndexFieldResponse].
  /// [arrayConfig] Indicates that this field supports operations on `array_value`s.
  /// [fieldPath] Can be __name__. For single field indexes, this must match the name of the field or may be omitted.
  /// [order] Indicates that this field supports ordering by the specified order or comparing using =, !=, <, <=, >, >=.
  /// [vectorConfig] Indicates that this field supports nearest neighbors and distance operations on vector.
  GoogleFirestoreAdminV1IndexFieldResponse({
    required this.arrayConfig,
    required this.fieldPath,
    required this.order,
    required this.vectorConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arrayConfig': arrayConfig,
      'fieldPath': fieldPath,
      'order': order,
      'vectorConfig': vectorConfig.toMap(),
    };
  }

  factory GoogleFirestoreAdminV1IndexFieldResponse.fromMap(Map<String, dynamic> map) {
    return GoogleFirestoreAdminV1IndexFieldResponse(
      arrayConfig: map['arrayConfig'] as String,
      fieldPath: map['fieldPath'] as String,
      order: map['order'] as String,
      vectorConfig: GoogleFirestoreAdminV1VectorConfigResponse.fromMap((map['vectorConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

