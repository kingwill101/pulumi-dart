// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ActionCustom resources.
class ActionCustomState {
  /// Specifies the JSON Blob defining the Body of this Custom Action.
  final pulumi.Input<String>? body;
  /// Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created.
  final pulumi.Input<String>? logicAppId;
  /// Specifies the name of the HTTP Action to be created within the Logic App Workflow. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** This name must be unique across all Actions within the Logic App Workflow.
  final pulumi.Input<String>? name;

  /// Creates a new [ActionCustomState].
  /// [body] Specifies the JSON Blob defining the Body of this Custom Action.
  /// [logicAppId] Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the HTTP Action to be created within the Logic App Workflow. Changing this forces a new resource to be created.
  ActionCustomState({
    pulumi.Output<String>? body,
    pulumi.Output<String>? logicAppId,
    pulumi.Output<String>? name,
  }) :
      body = pulumi.Input.asOptionalInput<String>(body),
      logicAppId = pulumi.Input.asOptionalInput<String>(logicAppId),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': ?body,
      'logicAppId': ?logicAppId,
      'name': ?name,
    };
  }

  factory ActionCustomState.fromMap(Map<String, dynamic> map) {
    return ActionCustomState(
      body: map['body'] == null ? null : pulumi.Output.create<String>(map['body'] as String),
      logicAppId: map['logicAppId'] == null ? null : pulumi.Output.create<String>(map['logicAppId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

