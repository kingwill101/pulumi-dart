// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'validation_options_schema_validation_deploymentmanager_v2beta.dart';
import 'validation_options_undeclared_properties_deploymentmanager_v2beta.dart';

/// Options for how to validate and process properties on a resource.
class ValidationOptionsDeploymentmanagerV2beta {
  /// Customize how deployment manager will validate the resource against schema errors.
  final pulumi.Input<ValidationOptionsSchemaValidationDeploymentmanagerV2beta>? schemaValidation;
  /// Specify what to do with extra properties when executing a request.
  final pulumi.Input<ValidationOptionsUndeclaredPropertiesDeploymentmanagerV2beta>? undeclaredProperties;

  /// Creates a new [ValidationOptionsDeploymentmanagerV2beta].
  /// [schemaValidation] Customize how deployment manager will validate the resource against schema errors.
  /// [undeclaredProperties] Specify what to do with extra properties when executing a request.
  ValidationOptionsDeploymentmanagerV2beta({
    this.schemaValidation,
    this.undeclaredProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schemaValidation': ?pulumi.Input.mapOptionalInputValue<ValidationOptionsSchemaValidationDeploymentmanagerV2beta, String>(schemaValidation, (value) => value.value),
      'undeclaredProperties': ?pulumi.Input.mapOptionalInputValue<ValidationOptionsUndeclaredPropertiesDeploymentmanagerV2beta, String>(undeclaredProperties, (value) => value.value),
    };
  }

  factory ValidationOptionsDeploymentmanagerV2beta.fromMap(Map<String, dynamic> map) {
    return ValidationOptionsDeploymentmanagerV2beta(
      schemaValidation: map['schemaValidation'] == null ? null : (ValidationOptionsSchemaValidationDeploymentmanagerV2beta.fromValue(map['schemaValidation']! as String)).input(),
      undeclaredProperties: map['undeclaredProperties'] == null ? null : (ValidationOptionsUndeclaredPropertiesDeploymentmanagerV2beta.fromValue(map['undeclaredProperties']! as String)).input(),
    );
  }
}

