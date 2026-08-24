// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiShieldOperationFeaturesParameterSchemasParameterSchemas {
  /// An array containing the learned parameter schemas.
  final pulumi.Input<List<String>?>? parameters;
  /// An empty response object. This field is required to yield a valid operation schema.
  final pulumi.Input<String?>? responses;

  /// Creates a new [ApiShieldOperationFeaturesParameterSchemasParameterSchemas].
  /// [parameters] An array containing the learned parameter schemas.
  /// [responses] An empty response object. This field is required to yield a valid operation schema.
  const ApiShieldOperationFeaturesParameterSchemasParameterSchemas({
    this.parameters,
    this.responses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?parameters,
      'responses': ?responses,
    };
  }

  factory ApiShieldOperationFeaturesParameterSchemasParameterSchemas.fromMap(Map<String, dynamic> map) {
    return ApiShieldOperationFeaturesParameterSchemasParameterSchemas(
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      responses: (() { final guardedValue = map['responses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
