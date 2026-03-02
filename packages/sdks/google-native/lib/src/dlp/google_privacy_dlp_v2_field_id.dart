// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// General identifier of a data field in a storage service.
class GooglePrivacyDlpV2FieldId {
  /// Name describing the field.
  final pulumi.Input<String>? name;

  /// Creates a new [GooglePrivacyDlpV2FieldId].
  /// [name] Name describing the field.
  GooglePrivacyDlpV2FieldId({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory GooglePrivacyDlpV2FieldId.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2FieldId(
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

