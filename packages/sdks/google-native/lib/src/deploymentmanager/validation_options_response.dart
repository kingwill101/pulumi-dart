// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Options for how to validate and process properties on a resource.
class ValidationOptionsResponse {
  /// Customize how deployment manager will validate the resource against schema errors.
  final pulumi.Input<String> schemaValidation;
  /// Specify what to do with extra properties when executing a request.
  final pulumi.Input<String> undeclaredProperties;

  /// Creates a new [ValidationOptionsResponse].
  /// [schemaValidation] Customize how deployment manager will validate the resource against schema errors.
  /// [undeclaredProperties] Specify what to do with extra properties when executing a request.
  const ValidationOptionsResponse({
    required this.schemaValidation,
    required this.undeclaredProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schemaValidation': schemaValidation,
      'undeclaredProperties': undeclaredProperties,
    };
  }

  factory ValidationOptionsResponse.fromMap(Map<String, dynamic> map) {
    return ValidationOptionsResponse(
      schemaValidation: pulumi.Input.fromValue(map['schemaValidation'] as String),
      undeclaredProperties: pulumi.Input.fromValue(map['undeclaredProperties'] as String),
    );
  }
}
