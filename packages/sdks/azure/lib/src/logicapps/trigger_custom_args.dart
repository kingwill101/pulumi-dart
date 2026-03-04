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
  /// &gt; **NOTE:** This name must be unique across all Triggers within the Logic App Workflow.
  final pulumi.Input<String>? name;

  /// Creates a new [TriggerCustomArgs].
  /// [body] Specifies the JSON Blob defining the Body of this Custom Trigger.
  /// [logicAppId] Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the HTTP Trigger to be created within the Logic App Workflow. Changing this forces a new resource to be created.
  TriggerCustomArgs({required this.body, required this.logicAppId, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': body,
      'logicAppId': logicAppId,
      'name': ?name,
    };
  }

  factory TriggerCustomArgs.fromMap(Map<String, dynamic> map) {
    return TriggerCustomArgs(
      body: pulumi.Input.fromValue(map['body'] as String),
      logicAppId: pulumi.Input.fromValue(map['logicAppId'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
