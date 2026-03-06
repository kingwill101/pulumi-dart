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
  const AiLogicPromptTemplateLockState({
    this.location,
    this.locked,
    this.name,
    this.project,
    this.templateId,
  });

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
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locked: (() { final guardedValue = map['locked']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateId: (() { final guardedValue = map['templateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

