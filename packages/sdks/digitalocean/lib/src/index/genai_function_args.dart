// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_genai_function_genai_function_args_doc}
/// The set of arguments for GenaiFunction.
/// {@endtemplate}
/// {@macro pulumi_index_genai_function_genai_function_args_doc}
class GenaiFunctionArgs {
  /// The name of the GradientAI resource.
  final pulumi.Input<String> agentId;
  /// The region where the GradientAI resource will be created.
  final pulumi.Input<String> description;
  /// The model to use for the GradientAI resource.
  final pulumi.Input<String>? faasName;
  /// The current status of the GradientAI resource.
  final pulumi.Input<String> faasNamespace;
  /// The creation timestamp of the GradientAI resource.
  final pulumi.Input<String> functionName;
  /// The input schema of the GradientAI resource.
  final pulumi.Input<String> inputSchema;
  /// The output schema of the GradientAI resource.
  final pulumi.Input<String>? outputSchema;

  /// Creates a new [GenaiFunctionArgs].
  /// [agentId] The name of the GradientAI resource.
  /// [description] The region where the GradientAI resource will be created.
  /// [faasName] The model to use for the GradientAI resource.
  /// [faasNamespace] The current status of the GradientAI resource.
  /// [functionName] The creation timestamp of the GradientAI resource.
  /// [inputSchema] The input schema of the GradientAI resource.
  /// [outputSchema] The output schema of the GradientAI resource.
  GenaiFunctionArgs({
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

  factory GenaiFunctionArgs.fromMap(Map<String, dynamic> map) {
    return GenaiFunctionArgs(
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

