// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AiLogicPromptTemplateLock resources.
class AiLogicPromptTemplateLockState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The location of the prompt template.
  final pulumi.Input<String?>? location;
  /// Indicates if the prompt template is currently locked.
  /// This is verified against the server-side PromptTemplate resource.
  final pulumi.Input<bool?>? locked;
  /// The resource name of the prompt template.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// For the `global` location only. If true, the modifyLock operation will
  /// apply to the global region only. Otherwise, the operation will also
  /// propagate to all applicable regions.
  final pulumi.Input<bool?>? regionalPropagationDisabled;
  /// The ID of the prompt template.
  final pulumi.Input<String?>? templateId;

  /// Creates a new [AiLogicPromptTemplateLockState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [location] The location of the prompt template.
  /// [locked] Indicates if the prompt template is currently locked.
  /// [name] The resource name of the prompt template.
  /// [project] The ID of the project in which the resource belongs.
  /// [regionalPropagationDisabled] For the `global` location only. If true, the modifyLock operation will
  /// [templateId] The ID of the prompt template.
  const AiLogicPromptTemplateLockState({
    this.deletionPolicy,
    this.location,
    this.locked,
    this.name,
    this.project,
    this.regionalPropagationDisabled,
    this.templateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'location': ?location,
      'locked': ?locked,
      'name': ?name,
      'project': ?project,
      'regionalPropagationDisabled': ?regionalPropagationDisabled,
      'templateId': ?templateId,
    };
  }

  factory AiLogicPromptTemplateLockState.fromMap(Map<String, dynamic> map) {
    return AiLogicPromptTemplateLockState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locked: (() { final guardedValue = map['locked']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionalPropagationDisabled: (() { final guardedValue = map['regionalPropagationDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      templateId: (() { final guardedValue = map['templateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
