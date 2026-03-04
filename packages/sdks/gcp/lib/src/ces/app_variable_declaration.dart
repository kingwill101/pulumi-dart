// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_variable_declaration_schema.dart';

class AppVariableDeclaration {
  /// The description of the variable.
  final pulumi.Input<String> description;

  /// The name of the variable. The name must start with a letter or underscore
  /// and contain only letters, numbers, or underscores.
  final pulumi.Input<String> name;

  /// Represents a select subset of an OpenAPI 3.0 schema object.
  /// Structure is documented below.
  final pulumi.Input<AppVariableDeclarationSchema> schema;

  /// Creates a new [AppVariableDeclaration].
  /// [description] The description of the variable.
  /// [name] The name of the variable. The name must start with a letter or underscore
  /// [schema] Represents a select subset of an OpenAPI 3.0 schema object.
  AppVariableDeclaration({
    required this.description,
    required this.name,
    required this.schema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'name': name,
      'schema':
          pulumi.Input.mapInputValue<
            AppVariableDeclarationSchema,
            Map<String, dynamic>
          >(schema, (value) => value.toMap()),
    };
  }

  factory AppVariableDeclaration.fromMap(Map<String, dynamic> map) {
    return AppVariableDeclaration(
      description: pulumi.Input.fromValue(map['description'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      schema: pulumi.Input.fromValue(
        AppVariableDeclarationSchema.fromMap(
          (map['schema']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
