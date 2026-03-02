// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CustomResourceColumnDefinition specifies a column for server side printing.
class CustomResourceColumnDefinitionApiextensionsK8sIoV1beta1 {
  /// JSONPath is a simple JSON path (i.e. with array notation) which is evaluated against each custom resource to produce the value for this column.
  final pulumi.Input<String> jSONPath;
  /// description is a human readable description of this column.
  final pulumi.Input<String>? description;
  /// format is an optional OpenAPI type definition for this column. The 'name' format is applied to the primary identifier column to assist in clients identifying column is the resource name. See https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.
  final pulumi.Input<String>? format;
  /// name is a human readable name for the column.
  final pulumi.Input<String> name;
  /// priority is an integer defining the relative importance of this column compared to others. Lower numbers are considered higher priority. Columns that may be omitted in limited space scenarios should be given a priority greater than 0.
  final pulumi.Input<int>? priority;
  /// type is an OpenAPI type definition for this column. See https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.
  final pulumi.Input<String> type;

  /// Creates a new [CustomResourceColumnDefinitionApiextensionsK8sIoV1beta1].
  /// [jSONPath] JSONPath is a simple JSON path (i.e. with array notation) which is evaluated against each custom resource to produce the value for this column.
  /// [description] description is a human readable description of this column.
  /// [format] format is an optional OpenAPI type definition for this column. The 'name' format is applied to the primary identifier column to assist in clients identifying column is the resource name. See https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.
  /// [name] name is a human readable name for the column.
  /// [priority] priority is an integer defining the relative importance of this column compared to others. Lower numbers are considered higher priority. Columns that may be omitted in limited space scenarios should be given a priority greater than 0.
  /// [type] type is an OpenAPI type definition for this column. See https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.
  CustomResourceColumnDefinitionApiextensionsK8sIoV1beta1({
    required this.jSONPath,
    this.description,
    this.format,
    required this.name,
    this.priority,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'JSONPath': jSONPath,
      'description': ?description,
      'format': ?format,
      'name': name,
      'priority': ?priority,
      'type': type,
    };
  }

  factory CustomResourceColumnDefinitionApiextensionsK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return CustomResourceColumnDefinitionApiextensionsK8sIoV1beta1(
      jSONPath: (map['JSONPath'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      format: map['format'] == null ? null : (map['format']! as String).input(),
      name: (map['name'] as String).input(),
      priority: map['priority'] == null ? null : (map['priority']! as int).input(),
      type: (map['type'] as String).input(),
    );
  }
}

