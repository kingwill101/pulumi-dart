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

  factory GenaiFunctionState.fromMap(Map<String, dynamic> map) {
    return GenaiFunctionState(
      agentId: (() {
        final guardedValue = map['agentId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      faasName: (() {
        final guardedValue = map['faasName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      faasNamespace: (() {
        final guardedValue = map['faasNamespace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      functionName: (() {
        final guardedValue = map['functionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      functionUuid: (() {
        final guardedValue = map['functionUuid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      inputSchema: (() {
        final guardedValue = map['inputSchema'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputSchema: (() {
        final guardedValue = map['outputSchema'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
