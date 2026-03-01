// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logicapps_action_custom_action_custom_args_doc}
/// The set of arguments for ActionCustom.
/// {@endtemplate}
/// {@macro pulumi_logicapps_action_custom_action_custom_args_doc}
class ActionCustomArgs {
  /// Specifies the JSON Blob defining the Body of this Custom Action.
  final pulumi.Input<String> body;
  /// Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created.
  final pulumi.Input<String> logicAppId;
  /// Specifies the name of the HTTP Action to be created within the Logic App Workflow. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** This name must be unique across all Actions within the Logic App Workflow.
  final pulumi.Input<String>? name;

  /// Creates a new [ActionCustomArgs].
  /// [body] Specifies the JSON Blob defining the Body of this Custom Action.
  /// [logicAppId] Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the HTTP Action to be created within the Logic App Workflow. Changing this forces a new resource to be created.
  ActionCustomArgs({
    required pulumi.Output<String> body,
    required pulumi.Output<String> logicAppId,
    pulumi.Output<String>? name,
  }) :
      body = pulumi.Input.asInput<String>(body),
      logicAppId = pulumi.Input.asInput<String>(logicAppId),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': body,
      'logicAppId': logicAppId,
      'name': ?name,
    };
  }

  factory ActionCustomArgs.fromMap(Map<String, dynamic> map) {
    return ActionCustomArgs(
      body: pulumi.Output.create<String>(map['body'] as String),
      logicAppId: pulumi.Output.create<String>(map['logicAppId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

