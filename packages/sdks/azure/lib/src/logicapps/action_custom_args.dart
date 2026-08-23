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
  /// &gt; **NOTE:** This name must be unique across all Actions within the Logic App Workflow.
  final pulumi.Input<String>? name;

  /// Creates a new [ActionCustomArgs].
  /// [body] Specifies the JSON Blob defining the Body of this Custom Action.
  /// [logicAppId] Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the HTTP Action to be created within the Logic App Workflow. Changing this forces a new resource to be created.
  const ActionCustomArgs({
    required this.body,
    required this.logicAppId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': body,
      'logicAppId': logicAppId,
      'name': ?name,
    };
  }

  factory ActionCustomArgs.fromMap(Map<String, dynamic> map) {
    return ActionCustomArgs(
      body: pulumi.Input.fromValue(map['body'] as String),
      logicAppId: pulumi.Input.fromValue(map['logicAppId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
