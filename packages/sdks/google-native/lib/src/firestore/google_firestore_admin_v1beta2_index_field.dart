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
  /// Indicates that this field supports ordering by the specified order or comparing using =, &lt;, &lt;=, &gt;, &gt;=.
  final pulumi.Input<GoogleFirestoreAdminV1beta2IndexFieldOrder>? order;

  /// Creates a new [GoogleFirestoreAdminV1beta2IndexField].
  /// [arrayConfig] Indicates that this field supports operations on `array_value`s.
  /// [fieldPath] Can be __name__. For single field indexes, this must match the name of the field or may be omitted.
  /// [order] Indicates that this field supports ordering by the specified order or comparing using =, &lt;, &lt;=, &gt;, &gt;=.
  const GoogleFirestoreAdminV1beta2IndexField({
    this.arrayConfig,
    this.fieldPath,
    this.order,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arrayConfig': ?pulumi.Input.mapOptionalInputValue<GoogleFirestoreAdminV1beta2IndexFieldArrayConfig, String>(arrayConfig, (value) => value.wireValue),
      'fieldPath': ?fieldPath,
      'order': ?pulumi.Input.mapOptionalInputValue<GoogleFirestoreAdminV1beta2IndexFieldOrder, String>(order, (value) => value.wireValue),
    };
  }

  factory GoogleFirestoreAdminV1beta2IndexField.fromMap(Map<String, dynamic> map) {
    return GoogleFirestoreAdminV1beta2IndexField(
      arrayConfig: (() { final guardedValue = map['arrayConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleFirestoreAdminV1beta2IndexFieldArrayConfig.fromValue(guardedValue as String)); })(),
      fieldPath: (() { final guardedValue = map['fieldPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleFirestoreAdminV1beta2IndexFieldOrder.fromValue(guardedValue as String)); })(),
    );
  }
}

