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
  AiLogicPromptTemplateState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? location,
    pulumi.Output<bool>? locked,
    pulumi.Output<String>? model,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? stateChangeTime,
    pulumi.Output<String>? templateId,
    pulumi.Output<String>? templateString,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      location = pulumi.Input.asOptionalInput<String>(location),
      locked = pulumi.Input.asOptionalInput<bool>(locked),
      model = pulumi.Input.asOptionalInput<String>(model),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      stateChangeTime = pulumi.Input.asOptionalInput<String>(stateChangeTime),
      templateId = pulumi.Input.asOptionalInput<String>(templateId),
      templateString = pulumi.Input.asOptionalInput<String>(templateString),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      locked: map['locked'] == null ? null : pulumi.Output.create<bool>(map['locked'] as bool),
      model: map['model'] == null ? null : pulumi.Output.create<String>(map['model'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      stateChangeTime: map['stateChangeTime'] == null ? null : pulumi.Output.create<String>(map['stateChangeTime'] as String),
      templateId: map['templateId'] == null ? null : pulumi.Output.create<String>(map['templateId'] as String),
      templateString: map['templateString'] == null ? null : pulumi.Output.create<String>(map['templateString'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

