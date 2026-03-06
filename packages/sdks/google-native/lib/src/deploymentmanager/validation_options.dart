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
  const ValidationOptions({
    this.schemaValidation,
    this.undeclaredProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schemaValidation': ?pulumi.Input.mapOptionalInputValue<ValidationOptionsSchemaValidation, String>(schemaValidation, (value) => value.wireValue),
      'undeclaredProperties': ?pulumi.Input.mapOptionalInputValue<ValidationOptionsUndeclaredProperties, String>(undeclaredProperties, (value) => value.wireValue),
    };
  }

  factory ValidationOptions.fromMap(Map<String, dynamic> map) {
    return ValidationOptions(
      schemaValidation: (() { final guardedValue = map['schemaValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ValidationOptionsSchemaValidation.fromValue(guardedValue as String)); })(),
      undeclaredProperties: (() { final guardedValue = map['undeclaredProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ValidationOptionsUndeclaredProperties.fromValue(guardedValue as String)); })(),
    );
  }
}

