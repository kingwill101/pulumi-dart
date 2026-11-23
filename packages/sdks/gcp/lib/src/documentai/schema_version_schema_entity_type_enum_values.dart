// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SchemaVersionSchemaEntityTypeEnumValues {
  /// The individual values that this enum values type can include.
  final pulumi.Input<List<String>?>? values;

  /// Creates a new [SchemaVersionSchemaEntityTypeEnumValues].
  /// [values] The individual values that this enum values type can include.
  const SchemaVersionSchemaEntityTypeEnumValues({
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': ?values,
    };
  }

  factory SchemaVersionSchemaEntityTypeEnumValues.fromMap(Map<String, dynamic> map) {
    return SchemaVersionSchemaEntityTypeEnumValues(
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
