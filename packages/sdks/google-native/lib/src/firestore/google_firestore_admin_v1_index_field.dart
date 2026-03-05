// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_firestore_admin_v1_index_field_array_config.dart';
import 'google_firestore_admin_v1_index_field_order.dart';
import 'google_firestore_admin_v1_vector_config.dart';

/// A field in an index. The field_path describes which field is indexed, the value_mode describes how the field value is indexed.
class GoogleFirestoreAdminV1IndexField {
  /// Indicates that this field supports operations on `array_value`s.
  final pulumi.Input<GoogleFirestoreAdminV1IndexFieldArrayConfig>? arrayConfig;
  /// Can be __name__. For single field indexes, this must match the name of the field or may be omitted.
  final pulumi.Input<String>? fieldPath;
  /// Indicates that this field supports ordering by the specified order or comparing using =, !=, &lt;, &lt;=, &gt;, &gt;=.
  final pulumi.Input<GoogleFirestoreAdminV1IndexFieldOrder>? order;
  /// Indicates that this field supports nearest neighbors and distance operations on vector.
  final pulumi.Input<GoogleFirestoreAdminV1VectorConfig>? vectorConfig;

  /// Creates a new [GoogleFirestoreAdminV1IndexField].
  /// [arrayConfig] Indicates that this field supports operations on `array_value`s.
  /// [fieldPath] Can be __name__. For single field indexes, this must match the name of the field or may be omitted.
  /// [order] Indicates that this field supports ordering by the specified order or comparing using =, !=, &lt;, &lt;=, &gt;, &gt;=.
  /// [vectorConfig] Indicates that this field supports nearest neighbors and distance operations on vector.
  GoogleFirestoreAdminV1IndexField({
    this.arrayConfig,
    this.fieldPath,
    this.order,
    this.vectorConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arrayConfig': ?pulumi.Input.mapOptionalInputValue<GoogleFirestoreAdminV1IndexFieldArrayConfig, String>(arrayConfig, (value) => value.wireValue),
      'fieldPath': ?fieldPath,
      'order': ?pulumi.Input.mapOptionalInputValue<GoogleFirestoreAdminV1IndexFieldOrder, String>(order, (value) => value.wireValue),
      'vectorConfig': ?pulumi.Input.mapOptionalInputValue<GoogleFirestoreAdminV1VectorConfig, Map<String, dynamic>>(vectorConfig, (value) => value.toMap()),
    };
  }

  factory GoogleFirestoreAdminV1IndexField.fromMap(Map<String, dynamic> map) {
    return GoogleFirestoreAdminV1IndexField(
      arrayConfig: (() { final guardedValue = map['arrayConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleFirestoreAdminV1IndexFieldArrayConfig.fromValue(guardedValue as String)); })(),
      fieldPath: (() { final guardedValue = map['fieldPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleFirestoreAdminV1IndexFieldOrder.fromValue(guardedValue as String)); })(),
      vectorConfig: (() { final guardedValue = map['vectorConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleFirestoreAdminV1VectorConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

