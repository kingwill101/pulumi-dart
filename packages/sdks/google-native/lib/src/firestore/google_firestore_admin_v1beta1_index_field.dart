// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_firestore_admin_v1beta1_index_field_mode.dart';

/// A field of an index.
class GoogleFirestoreAdminV1beta1IndexField {
  /// The path of the field. Must match the field path specification described by google.firestore.v1beta1.Document.fields. Special field path `__name__` may be used by itself or at the end of a path. `__type__` may be used only at the end of path.
  final pulumi.Input<String>? fieldPath;
  /// The field's mode.
  final pulumi.Input<GoogleFirestoreAdminV1beta1IndexFieldMode>? mode;

  /// Creates a new [GoogleFirestoreAdminV1beta1IndexField].
  /// [fieldPath] The path of the field. Must match the field path specification described by google.firestore.v1beta1.Document.fields. Special field path `__name__` may be used by itself or at the end of a path. `__type__` may be used only at the end of path.
  /// [mode] The field's mode.
  GoogleFirestoreAdminV1beta1IndexField({
    this.fieldPath,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldPath': ?fieldPath,
      'mode': ?pulumi.Input.mapOptionalInputValue<GoogleFirestoreAdminV1beta1IndexFieldMode, String>(mode, (value) => value.value),
    };
  }

  factory GoogleFirestoreAdminV1beta1IndexField.fromMap(Map<String, dynamic> map) {
    return GoogleFirestoreAdminV1beta1IndexField(
      fieldPath: map['fieldPath'] == null ? null : (map['fieldPath']! as String).input(),
      mode: map['mode'] == null ? null : (GoogleFirestoreAdminV1beta1IndexFieldMode.fromValue(map['mode']! as String)).input(),
    );
  }
}

