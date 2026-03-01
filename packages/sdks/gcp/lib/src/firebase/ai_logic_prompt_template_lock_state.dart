// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AiLogicPromptTemplateLock resources.
class AiLogicPromptTemplateLockState {
  /// The location of the prompt template.
  final pulumi.Input<String>? location;
  /// Indicates if the prompt template is currently locked.
  /// This is verified against the server-side PromptTemplate resource.
  final pulumi.Input<bool>? locked;
  /// The resource name of the prompt template.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The ID of the prompt template.
  final pulumi.Input<String>? templateId;

  /// Creates a new [AiLogicPromptTemplateLockState].
  /// [location] The location of the prompt template.
  /// [locked] Indicates if the prompt template is currently locked.
  /// [name] The resource name of the prompt template.
  /// [project] The ID of the project in which the resource belongs.
  /// [templateId] The ID of the prompt template.
  AiLogicPromptTemplateLockState({
    pulumi.Output<String>? location,
    pulumi.Output<bool>? locked,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? templateId,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      locked = pulumi.Input.asOptionalInput<bool>(locked),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      templateId = pulumi.Input.asOptionalInput<String>(templateId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'locked': ?locked,
      'name': ?name,
      'project': ?project,
      'templateId': ?templateId,
    };
  }

  factory AiLogicPromptTemplateLockState.fromMap(Map<String, dynamic> map) {
    return AiLogicPromptTemplateLockState(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      locked: map['locked'] == null ? null : pulumi.Output.create<bool>(map['locked'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      templateId: map['templateId'] == null ? null : pulumi.Output.create<String>(map['templateId'] as String),
    );
  }
}

