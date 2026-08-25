// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AiLogicPromptTemplate resources.
class AiLogicPromptTemplateState {
  /// Timestamp when the PromptTemplate was created.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The display name of the PromptTemplate.
  final pulumi.Input<String?>? displayName;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? location;
  /// Indicates if the PromptTemplate has been locked for mutations.  It is
  /// strongly recommended that PromptTemplates used in production Apps be
  /// locked to avoid accidental distruption to live apps.
  /// To modify a PromptTemplate that has been locked, a call to ModifyLock with
  /// lock=false is required first.
  final pulumi.Input<bool?>? locked;
  /// The model name parsed from the template_string.
  final pulumi.Input<String?>? model;
  /// Identifier. The resource name of the PromptTemplate.
  /// Format:
  /// projects/{project}/locations/{location}/templates/{prompt_template}
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// For the `global` location only. If true, the write operation (create,
  /// update, or delete) will apply to the global region only. Otherwise, the
  /// operation will also propagate to all applicable regions.
  final pulumi.Input<bool?>? regionalPropagationDisabled;
  /// Timestamp when the PromptTemplate state was last changed.
  final pulumi.Input<String?>? stateChangeTime;
  /// The unique ID of the PromptTemplate, which is the final component of the
  /// PromptTemplate's resource name.
  final pulumi.Input<String?>? templateId;
  /// The [Dotprompt](https://google.github.io/dotprompt/getting-started) raw template string.
  final pulumi.Input<String?>? templateString;
  /// Timestamp when the PromptTemplate was last updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [AiLogicPromptTemplateState].
  /// [createTime] Timestamp when the PromptTemplate was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The display name of the PromptTemplate.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [locked] Indicates if the PromptTemplate has been locked for mutations.  It is
  /// [model] The model name parsed from the template_string.
  /// [name] Identifier. The resource name of the PromptTemplate.
  /// [project] The ID of the project in which the resource belongs.
  /// [regionalPropagationDisabled] For the `global` location only. If true, the write operation (create,
  /// [stateChangeTime] Timestamp when the PromptTemplate state was last changed.
  /// [templateId] The unique ID of the PromptTemplate, which is the final component of the
  /// [templateString] The [Dotprompt](https://google.github.io/dotprompt/getting-started) raw template string.
  /// [updateTime] Timestamp when the PromptTemplate was last updated.
  const AiLogicPromptTemplateState({
    this.createTime,
    this.deletionPolicy,
    this.displayName,
    this.location,
    this.locked,
    this.model,
    this.name,
    this.project,
    this.regionalPropagationDisabled,
    this.stateChangeTime,
    this.templateId,
    this.templateString,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'location': ?location,
      'locked': ?locked,
      'model': ?model,
      'name': ?name,
      'project': ?project,
      'regionalPropagationDisabled': ?regionalPropagationDisabled,
      'stateChangeTime': ?stateChangeTime,
      'templateId': ?templateId,
      'templateString': ?templateString,
      'updateTime': ?updateTime,
    };
  }

  factory AiLogicPromptTemplateState.fromMap(Map<String, dynamic> map) {
    return AiLogicPromptTemplateState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locked: (() { final guardedValue = map['locked']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionalPropagationDisabled: (() { final guardedValue = map['regionalPropagationDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      stateChangeTime: (() { final guardedValue = map['stateChangeTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateId: (() { final guardedValue = map['templateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateString: (() { final guardedValue = map['templateString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
