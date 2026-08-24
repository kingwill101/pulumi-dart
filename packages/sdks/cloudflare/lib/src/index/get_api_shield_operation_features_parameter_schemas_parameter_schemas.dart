// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApiShieldOperationFeaturesParameterSchemasParameterSchemas {
  /// An array containing the learned parameter schemas.
  final pulumi.Input<List<String>> parameters;
  /// An empty response object. This field is required to yield a valid operation schema.
  final pulumi.Input<String> responses;

  /// Creates a new [GetApiShieldOperationFeaturesParameterSchemasParameterSchemas].
  /// [parameters] An array containing the learned parameter schemas.
  /// [responses] An empty response object. This field is required to yield a valid operation schema.
  const GetApiShieldOperationFeaturesParameterSchemasParameterSchemas({
    required this.parameters,
    required this.responses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': parameters,
      'responses': responses,
    };
  }

  factory GetApiShieldOperationFeaturesParameterSchemasParameterSchemas.fromMap(Map<String, dynamic> map) {
    return GetApiShieldOperationFeaturesParameterSchemasParameterSchemas(
      parameters: pulumi.Input.fromValue((map['parameters'] as List).cast<String>()),
      responses: pulumi.Input.fromValue(map['responses'] as String),
    );
  }
}
