// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GenaiFunction resources.
class GenaiFunctionState {
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

  /// Creates a new [GenaiFunctionState].
  /// [agentId] The name of the GradientAI resource.
  /// [description] The region where the GradientAI resource will be created.
  /// [faasName] The model to use for the GradientAI resource.
  /// [faasNamespace] The current status of the GradientAI resource.
  /// [functionName] The creation timestamp of the GradientAI resource.
  /// [functionUuid] The unique identifier of the GradientAI function.
  /// [inputSchema] The input schema of the GradientAI resource.
  /// [outputSchema] The output schema of the GradientAI resource.
  GenaiFunctionState({
    pulumi.Output<String>? agentId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? faasName,
    pulumi.Output<String>? faasNamespace,
    pulumi.Output<String>? functionName,
    pulumi.Output<String>? functionUuid,
    pulumi.Output<String>? inputSchema,
    pulumi.Output<String>? outputSchema,
  }) :
      agentId = pulumi.Input.asOptionalInput<String>(agentId),
      description = pulumi.Input.asOptionalInput<String>(description),
      faasName = pulumi.Input.asOptionalInput<String>(faasName),
      faasNamespace = pulumi.Input.asOptionalInput<String>(faasNamespace),
      functionName = pulumi.Input.asOptionalInput<String>(functionName),
      functionUuid = pulumi.Input.asOptionalInput<String>(functionUuid),
      inputSchema = pulumi.Input.asOptionalInput<String>(inputSchema),
      outputSchema = pulumi.Input.asOptionalInput<String>(outputSchema);

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

  factory GenaiFunctionState.fromMap(Map<String, dynamic> map) {
    return GenaiFunctionState(
      agentId: map['agentId'] == null ? null : pulumi.Output.create<String>(map['agentId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      faasName: map['faasName'] == null ? null : pulumi.Output.create<String>(map['faasName'] as String),
      faasNamespace: map['faasNamespace'] == null ? null : pulumi.Output.create<String>(map['faasNamespace'] as String),
      functionName: map['functionName'] == null ? null : pulumi.Output.create<String>(map['functionName'] as String),
      functionUuid: map['functionUuid'] == null ? null : pulumi.Output.create<String>(map['functionUuid'] as String),
      inputSchema: map['inputSchema'] == null ? null : pulumi.Output.create<String>(map['inputSchema'] as String),
      outputSchema: map['outputSchema'] == null ? null : pulumi.Output.create<String>(map['outputSchema'] as String),
    );
  }
}

