// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CustomResourceColumnDefinition specifies a column for server side printing.
class CustomResourceColumnDefinitionPatch {
  /// description is a human readable description of this column.
  final pulumi.Input<String>? description;
  /// format is an optional OpenAPI type definition for this column. The 'name' format is applied to the primary identifier column to assist in clients identifying column is the resource name. See https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.
  final pulumi.Input<String>? format;
  /// jsonPath is a simple JSON path (i.e. with array notation) which is evaluated against each custom resource to produce the value for this column.
  final pulumi.Input<String>? jsonPath;
  /// name is a human readable name for the column.
  final pulumi.Input<String>? name;
  /// priority is an integer defining the relative importance of this column compared to others. Lower numbers are considered higher priority. Columns that may be omitted in limited space scenarios should be given a priority greater than 0.
  final pulumi.Input<int>? priority;
  /// type is an OpenAPI type definition for this column. See https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.
  final pulumi.Input<String>? type;

  /// Creates a new [CustomResourceColumnDefinitionPatch].
  /// [description] description is a human readable description of this column.
  /// [format] format is an optional OpenAPI type definition for this column. The 'name' format is applied to the primary identifier column to assist in clients identifying column is the resource name. See https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.
  /// [jsonPath] jsonPath is a simple JSON path (i.e. with array notation) which is evaluated against each custom resource to produce the value for this column.
  /// [name] name is a human readable name for the column.
  /// [priority] priority is an integer defining the relative importance of this column compared to others. Lower numbers are considered higher priority. Columns that may be omitted in limited space scenarios should be given a priority greater than 0.
  /// [type] type is an OpenAPI type definition for this column. See https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.
  const CustomResourceColumnDefinitionPatch({
    this.description,
    this.format,
    this.jsonPath,
    this.name,
    this.priority,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'format': ?format,
      'jsonPath': ?jsonPath,
      'name': ?name,
      'priority': ?priority,
      'type': ?type,
    };
  }

  factory CustomResourceColumnDefinitionPatch.fromMap(Map<String, dynamic> map) {
    return CustomResourceColumnDefinitionPatch(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jsonPath: (() { final guardedValue = map['jsonPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
