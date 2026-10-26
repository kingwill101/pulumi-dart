// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_gradientai_function_gradientai_function_args_doc}
/// The set of arguments for GradientaiFunction.
/// {@endtemplate}
/// {@macro pulumi_index_gradientai_function_gradientai_function_args_doc}
class GradientaiFunctionArgs {
  /// The name of the Agent Platform resource.
  final pulumi.Input<String> agentId;
  /// The region where the Agent Platform resource will be created.
  final pulumi.Input<String> description;
  /// The model to use for the Agent Platform resource.
  final pulumi.Input<String?>? faasName;
  /// The current status of the Agent Platform resource.
  final pulumi.Input<String> faasNamespace;
  /// The creation timestamp of the Agent Platform resource.
  final pulumi.Input<String> functionName;
  /// The input schema of the Agent Platform resource.
  final pulumi.Input<String> inputSchema;
  /// The output schema of the Agent Platform resource.
  final pulumi.Input<String?>? outputSchema;

  /// Creates a new [GradientaiFunctionArgs].
  /// [agentId] The name of the Agent Platform resource.
  /// [description] The region where the Agent Platform resource will be created.
  /// [faasName] The model to use for the Agent Platform resource.
  /// [faasNamespace] The current status of the Agent Platform resource.
  /// [functionName] The creation timestamp of the Agent Platform resource.
  /// [inputSchema] The input schema of the Agent Platform resource.
  /// [outputSchema] The output schema of the Agent Platform resource.
  const GradientaiFunctionArgs({
    required this.agentId,
    required this.description,
    this.faasName,
    required this.faasNamespace,
    required this.functionName,
    required this.inputSchema,
    this.outputSchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'description': description,
      'faasName': ?faasName,
      'faasNamespace': faasNamespace,
      'functionName': functionName,
      'inputSchema': inputSchema,
      'outputSchema': ?outputSchema,
    };
  }

  factory GradientaiFunctionArgs.fromMap(Map<String, dynamic> map) {
    return GradientaiFunctionArgs(
      agentId: pulumi.Input.fromValue(map['agentId'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      faasName: (() { final guardedValue = map['faasName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      faasNamespace: pulumi.Input.fromValue(map['faasNamespace'] as String),
      functionName: pulumi.Input.fromValue(map['functionName'] as String),
      inputSchema: pulumi.Input.fromValue(map['inputSchema'] as String),
      outputSchema: (() { final guardedValue = map['outputSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
