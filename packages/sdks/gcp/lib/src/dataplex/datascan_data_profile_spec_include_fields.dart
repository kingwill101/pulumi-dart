// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatascanDataProfileSpecIncludeFields {
  /// Expected input is a list of fully qualified names of fields as in the schema.
  /// Only top-level field names for nested fields are supported.
  /// For instance, if 'x' is of nested field type, listing 'x' is supported but 'x.y.z' is not supported. Here 'y' and 'y.z' are nested fields of 'x'.
  final pulumi.Input<List<String>>? fieldNames;

  /// Creates a new [DatascanDataProfileSpecIncludeFields].
  /// [fieldNames] Expected input is a list of fully qualified names of fields as in the schema.
  const DatascanDataProfileSpecIncludeFields({
    this.fieldNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldNames': ?fieldNames,
    };
  }

  factory DatascanDataProfileSpecIncludeFields.fromMap(Map<String, dynamic> map) {
    return DatascanDataProfileSpecIncludeFields(
      fieldNames: (() { final guardedValue = map['fieldNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

