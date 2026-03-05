// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_firestore_admin_v1_vector_config_response.dart';

/// A field in an index. The field_path describes which field is indexed, the value_mode describes how the field value is indexed.
class GoogleFirestoreAdminV1IndexFieldResponse {
  /// Indicates that this field supports operations on `array_value`s.
  final pulumi.Input<String> arrayConfig;
  /// Can be __name__. For single field indexes, this must match the name of the field or may be omitted.
  final pulumi.Input<String> fieldPath;
  /// Indicates that this field supports ordering by the specified order or comparing using =, !=, &lt;, &lt;=, &gt;, &gt;=.
  final pulumi.Input<String> order;
  /// Indicates that this field supports nearest neighbors and distance operations on vector.
  final pulumi.Input<GoogleFirestoreAdminV1VectorConfigResponse> vectorConfig;

  /// Creates a new [GoogleFirestoreAdminV1IndexFieldResponse].
  /// [arrayConfig] Indicates that this field supports operations on `array_value`s.
  /// [fieldPath] Can be __name__. For single field indexes, this must match the name of the field or may be omitted.
  /// [order] Indicates that this field supports ordering by the specified order or comparing using =, !=, &lt;, &lt;=, &gt;, &gt;=.
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
      'vectorConfig': pulumi.Input.mapInputValue<GoogleFirestoreAdminV1VectorConfigResponse, Map<String, dynamic>>(vectorConfig, (value) => value.toMap()),
    };
  }

  factory GoogleFirestoreAdminV1IndexFieldResponse.fromMap(Map<String, dynamic> map) {
    return GoogleFirestoreAdminV1IndexFieldResponse(
      arrayConfig: pulumi.Input.fromValue(map['arrayConfig'] as String),
      fieldPath: pulumi.Input.fromValue(map['fieldPath'] as String),
      order: pulumi.Input.fromValue(map['order'] as String),
      vectorConfig: pulumi.Input.fromValue(GoogleFirestoreAdminV1VectorConfigResponse.fromMap((map['vectorConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

