// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldField {
  /// Name describing the field.
  final pulumi.Input<String> name;

  /// Creates a new [PreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldField].
  /// [name] Name describing the field.
  PreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldField({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory PreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldField.fromMap(Map<String, dynamic> map) {
    return PreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldField(
      name: (map['name'] as String).input(),
    );
  }
}

