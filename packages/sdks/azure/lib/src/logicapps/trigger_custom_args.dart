// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logicapps_trigger_custom_trigger_custom_args_doc}
/// The set of arguments for TriggerCustom.
/// {@endtemplate}
/// {@macro pulumi_logicapps_trigger_custom_trigger_custom_args_doc}
class TriggerCustomArgs {
  /// Specifies the JSON Blob defining the Body of this Custom Trigger.
  final pulumi.Input<String> body;
  /// Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created.
  final pulumi.Input<String> logicAppId;
  /// Specifies the name of the HTTP Trigger to be created within the Logic App Workflow. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** This name must be unique across all Triggers within the Logic App Workflow.
  final pulumi.Input<String>? name;

  /// Creates a new [TriggerCustomArgs].
  /// [body] Specifies the JSON Blob defining the Body of this Custom Trigger.
  /// [logicAppId] Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the HTTP Trigger to be created within the Logic App Workflow. Changing this forces a new resource to be created.
  TriggerCustomArgs({
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

  factory TriggerCustomArgs.fromMap(Map<String, dynamic> map) {
    return TriggerCustomArgs(
      body: pulumi.Output.create<String>(map['body'] as String),
      logicAppId: pulumi.Output.create<String>(map['logicAppId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

