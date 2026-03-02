// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Options for how to validate and process properties on a resource.
class ValidationOptionsResponseDeploymentmanagerV2beta {
  /// Customize how deployment manager will validate the resource against schema errors.
  final pulumi.Input<String> schemaValidation;
  /// Specify what to do with extra properties when executing a request.
  final pulumi.Input<String> undeclaredProperties;

  /// Creates a new [ValidationOptionsResponseDeploymentmanagerV2beta].
  /// [schemaValidation] Customize how deployment manager will validate the resource against schema errors.
  /// [undeclaredProperties] Specify what to do with extra properties when executing a request.
  ValidationOptionsResponseDeploymentmanagerV2beta({
    required this.schemaValidation,
    required this.undeclaredProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schemaValidation': schemaValidation,
      'undeclaredProperties': undeclaredProperties,
    };
  }

  factory ValidationOptionsResponseDeploymentmanagerV2beta.fromMap(Map<String, dynamic> map) {
    return ValidationOptionsResponseDeploymentmanagerV2beta(
      schemaValidation: (map['schemaValidation'] as String).input(),
      undeclaredProperties: (map['undeclaredProperties'] as String).input(),
    );
  }
}

