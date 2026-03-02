// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_firestore_admin_v1beta2_index_field_array_config.dart';
import 'google_firestore_admin_v1beta2_index_field_order.dart';

/// A field in an index. The field_path describes which field is indexed, the value_mode describes how the field value is indexed.
class GoogleFirestoreAdminV1beta2IndexField {
  /// Indicates that this field supports operations on `array_value`s.
  final pulumi.Input<GoogleFirestoreAdminV1beta2IndexFieldArrayConfig>? arrayConfig;
  /// Can be __name__. For single field indexes, this must match the name of the field or may be omitted.
  final pulumi.Input<String>? fieldPath;
  /// Indicates that this field supports ordering by the specified order or comparing using =, <, <=, >, >=.
  final pulumi.Input<GoogleFirestoreAdminV1beta2IndexFieldOrder>? order;

  /// Creates a new [GoogleFirestoreAdminV1beta2IndexField].
  /// [arrayConfig] Indicates that this field supports operations on `array_value`s.
  /// [fieldPath] Can be __name__. For single field indexes, this must match the name of the field or may be omitted.
  /// [order] Indicates that this field supports ordering by the specified order or comparing using =, <, <=, >, >=.
  GoogleFirestoreAdminV1beta2IndexField({
    this.arrayConfig,
    this.fieldPath,
    this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arrayConfig': ?pulumi.Input.mapOptionalInputValue<GoogleFirestoreAdminV1beta2IndexFieldArrayConfig, String>(arrayConfig, (value) => value.value),
      'fieldPath': ?fieldPath,
      'order': ?pulumi.Input.mapOptionalInputValue<GoogleFirestoreAdminV1beta2IndexFieldOrder, String>(order, (value) => value.value),
    };
  }

  factory GoogleFirestoreAdminV1beta2IndexField.fromMap(Map<String, dynamic> map) {
    return GoogleFirestoreAdminV1beta2IndexField(
      arrayConfig: map['arrayConfig'] == null ? null : (GoogleFirestoreAdminV1beta2IndexFieldArrayConfig.fromValue(map['arrayConfig'] as String)).input(),
      fieldPath: map['fieldPath'] == null ? null : (map['fieldPath'] as String).input(),
      order: map['order'] == null ? null : (GoogleFirestoreAdminV1beta2IndexFieldOrder.fromValue(map['order'] as String)).input(),
    );
  }
}

