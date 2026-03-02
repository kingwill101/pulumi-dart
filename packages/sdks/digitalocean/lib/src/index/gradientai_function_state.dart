// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GradientaiFunction resources.
class GradientaiFunctionState {
  /// The name of the GradientAI resource.
  final pulumi.Input<String>? agentId;
  /// The region where the GradientAI resource will be created.
  final pulumi.Input<String>? description;
  /// The model to use for the GradientAI resource.
  final pulumi.Input<String>? faasName;
  /// The current status of the GradientAI resource.
  final pulumi.Input<String>? faasNamespace;
  /// The creation timestamp of the GradientAI resource.
  final pulumi.Input<String>? functionName;
  /// The unique identifier of the GradientAI function.
  final pulumi.Input<String>? functionUuid;
  /// The input schema of the GradientAI resource.
  final pulumi.Input<String>? inputSchema;
  /// The output schema of the GradientAI resource.
  final pulumi.Input<String>? outputSchema;

  /// Creates a new [GradientaiFunctionState].
  /// [agentId] The name of the GradientAI resource.
  /// [description] The region where the GradientAI resource will be created.
  /// [faasName] The model to use for the GradientAI resource.
  /// [faasNamespace] The current status of the GradientAI resource.
  /// [functionName] The creation timestamp of the GradientAI resource.
  /// [functionUuid] The unique identifier of the GradientAI function.
  /// [inputSchema] The input schema of the GradientAI resource.
  /// [outputSchema] The output schema of the GradientAI resource.
  GradientaiFunctionState({
    this.agentId,
    this.description,
    this.faasName,
    this.faasNamespace,
    this.functionName,
    this.functionUuid,
    this.inputSchema,
    this.outputSchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': ?agentId,
      'description': ?description,
      'faasName': ?faasName,
      'faasNamespace': ?faasNamespace,
      'functionName': ?functionName,
      'functionUuid': ?functionUuid,
      'inputSchema': ?inputSchema,
      'outputSchema': ?outputSchema,
    };
  }

  factory GradientaiFunctionState.fromMap(Map<String, dynamic> map) {
    return GradientaiFunctionState(
      agentId: map['agentId'] == null ? null : (map['agentId']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      faasName: map['faasName'] == null ? null : (map['faasName']! as String).input(),
      faasNamespace: map['faasNamespace'] == null ? null : (map['faasNamespace']! as String).input(),
      functionName: map['functionName'] == null ? null : (map['functionName']! as String).input(),
      functionUuid: map['functionUuid'] == null ? null : (map['functionUuid']! as String).input(),
      inputSchema: map['inputSchema'] == null ? null : (map['inputSchema']! as String).input(),
      outputSchema: map['outputSchema'] == null ? null : (map['outputSchema']! as String).input(),
    );
  }
}

