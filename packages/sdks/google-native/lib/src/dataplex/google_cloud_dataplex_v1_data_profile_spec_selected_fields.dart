// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The specification for fields to include or exclude in data profile scan.
class GoogleCloudDataplexV1DataProfileSpecSelectedFields {
  /// Optional. Expected input is a list of fully qualified names of fields as in the schema.Only top-level field names for nested fields are supported. For instance, if 'x' is of nested field type, listing 'x' is supported but 'x.y.z' is not supported. Here 'y' and 'y.z' are nested fields of 'x'.
  final pulumi.Input<List<String>>? fieldNames;

  /// Creates a new [GoogleCloudDataplexV1DataProfileSpecSelectedFields].
  /// [fieldNames] Optional. Expected input is a list of fully qualified names of fields as in the schema.Only top-level field names for nested fields are supported. For instance, if 'x' is of nested field type, listing 'x' is supported but 'x.y.z' is not supported. Here 'y' and 'y.z' are nested fields of 'x'.
  const GoogleCloudDataplexV1DataProfileSpecSelectedFields({
    this.fieldNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldNames': ?fieldNames,
    };
  }

  factory GoogleCloudDataplexV1DataProfileSpecSelectedFields.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataProfileSpecSelectedFields(
      fieldNames: (() { final guardedValue = map['fieldNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
