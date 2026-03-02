// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tool_client_function_parameters.dart';
import 'tool_client_function_response.dart';

class ToolClientFunction {
  /// The function description.
  final pulumi.Input<String>? description;
  /// The function name.
  final pulumi.Input<String> name;
  /// Represents a select subset of an OpenAPI 3.0 schema object.
  /// Structure is documented below.
  final pulumi.Input<ToolClientFunctionParameters>? parameters;
  /// Represents a select subset of an OpenAPI 3.0 schema object.
  /// Structure is documented below.
  final pulumi.Input<ToolClientFunctionResponse>? response;

  /// Creates a new [ToolClientFunction].
  /// [description] The function description.
  /// [name] The function name.
  /// [parameters] Represents a select subset of an OpenAPI 3.0 schema object.
  /// [response] Represents a select subset of an OpenAPI 3.0 schema object.
  ToolClientFunction({
    this.description,
    required this.name,
    this.parameters,
    this.response,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': name,
      'parameters': ?pulumi.Input.mapOptionalInputValue<ToolClientFunctionParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'response': ?pulumi.Input.mapOptionalInputValue<ToolClientFunctionResponse, Map<String, dynamic>>(response, (value) => value.toMap()),
    };
  }

  factory ToolClientFunction.fromMap(Map<String, dynamic> map) {
    return ToolClientFunction(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: (map['name'] as String).input(),
      parameters: map['parameters'] == null ? null : (ToolClientFunctionParameters.fromMap((map['parameters']! as Map).cast<String, dynamic>())).input(),
      response: map['response'] == null ? null : (ToolClientFunctionResponse.fromMap((map['response']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

