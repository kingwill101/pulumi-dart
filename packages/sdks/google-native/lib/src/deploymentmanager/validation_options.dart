// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'validation_options_schema_validation.dart';
import 'validation_options_undeclared_properties.dart';

/// Options for how to validate and process properties on a resource.
class ValidationOptions {
  /// Customize how deployment manager will validate the resource against schema errors.
  final pulumi.Input<ValidationOptionsSchemaValidation>? schemaValidation;
  /// Specify what to do with extra properties when executing a request.
  final pulumi.Input<ValidationOptionsUndeclaredProperties>? undeclaredProperties;

  /// Creates a new [ValidationOptions].
  /// [schemaValidation] Customize how deployment manager will validate the resource against schema errors.
  /// [undeclaredProperties] Specify what to do with extra properties when executing a request.
  ValidationOptions({
    this.schemaValidation,
    this.undeclaredProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schemaValidation': ?pulumi.Input.mapOptionalInputValue<ValidationOptionsSchemaValidation, String>(schemaValidation, (value) => value.value),
      'undeclaredProperties': ?pulumi.Input.mapOptionalInputValue<ValidationOptionsUndeclaredProperties, String>(undeclaredProperties, (value) => value.value),
    };
  }

  factory ValidationOptions.fromMap(Map<String, dynamic> map) {
    return ValidationOptions(
      schemaValidation: map['schemaValidation'] == null ? null : (ValidationOptionsSchemaValidation.fromValue(map['schemaValidation']! as String)).input(),
      undeclaredProperties: map['undeclaredProperties'] == null ? null : (ValidationOptionsUndeclaredProperties.fromValue(map['undeclaredProperties']! as String)).input(),
    );
  }
}

