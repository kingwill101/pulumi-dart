// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AiLogicPromptTemplate resources.
class AiLogicPromptTemplateState {
  /// Timestamp when the PromptTemplate was created.
  final pulumi.Input<String>? createTime;
  /// The display name of the PromptTemplate.
  final pulumi.Input<String>? displayName;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Indicates if the PromptTemplate has been locked for mutations.  It is
  /// strongly recommended that PromptTemplates used in production Apps be
  /// locked to avoid accidental distruption to live apps.
  /// To modify a PromptTemplate that has been locked, a call to ModifyLock with
  /// lock=false is required first.
  final pulumi.Input<bool>? locked;
  /// The model name parsed from the template_string.
  final pulumi.Input<String>? model;
  /// Identifier. The resource name of the PromptTemplate.
  /// Format:
  /// projects/{project}/locations/{location}/templates/{prompt_template}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Timestamp when the PromptTemplate state was last changed.
  final pulumi.Input<String>? stateChangeTime;
  /// The unique ID of the PromptTemplate, which is the final component of the
  /// PromptTemplate's resource name.
  final pulumi.Input<String>? templateId;
  /// The DotPrompt raw template string.
  final pulumi.Input<String>? templateString;
  /// Timestamp when the PromptTemplate was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [AiLogicPromptTemplateState].
  /// [createTime] Timestamp when the PromptTemplate was created.
  /// [displayName] The display name of the PromptTemplate.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [locked] Indicates if the PromptTemplate has been locked for mutations.  It is
  /// [model] The model name parsed from the template_string.
  /// [name] Identifier. The resource name of the PromptTemplate.
  /// [project] The ID of the project in which the resource belongs.
  /// [stateChangeTime] Timestamp when the PromptTemplate state was last changed.
  /// [templateId] The unique ID of the PromptTemplate, which is the final component of the
  /// [templateString] The DotPrompt raw template string.
  /// [updateTime] Timestamp when the PromptTemplate was last updated.
  const AiLogicPromptTemplateState({
    this.createTime,
    this.displayName,
    this.location,
    this.locked,
    this.model,
    this.name,
    this.project,
    this.stateChangeTime,
    this.templateId,
    this.templateString,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'displayName': ?displayName,
      'location': ?location,
      'locked': ?locked,
      'model': ?model,
      'name': ?name,
      'project': ?project,
      'stateChangeTime': ?stateChangeTime,
      'templateId': ?templateId,
      'templateString': ?templateString,
      'updateTime': ?updateTime,
    };
  }

  factory AiLogicPromptTemplateState.fromMap(Map<String, dynamic> map) {
    return AiLogicPromptTemplateState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locked: (() { final guardedValue = map['locked']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      model: (() { final guardedValue = map['model']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stateChangeTime: (() { final guardedValue = map['stateChangeTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateId: (() { final guardedValue = map['templateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateString: (() { final guardedValue = map['templateString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

