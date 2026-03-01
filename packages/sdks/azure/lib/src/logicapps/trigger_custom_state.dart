// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TriggerCustom resources.
class TriggerCustomState {
  /// Specifies the JSON Blob defining the Body of this Custom Trigger.
  final pulumi.Input<String>? body;
  /// The URL of the Trigger within the Logic App Workflow. For use with certain resources like monitor_action_group and security_center_automation.
  final pulumi.Input<String>? callbackUrl;
  /// Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created.
  final pulumi.Input<String>? logicAppId;
  /// Specifies the name of the HTTP Trigger to be created within the Logic App Workflow. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** This name must be unique across all Triggers within the Logic App Workflow.
  final pulumi.Input<String>? name;

  /// Creates a new [TriggerCustomState].
  /// [body] Specifies the JSON Blob defining the Body of this Custom Trigger.
  /// [callbackUrl] The URL of the Trigger within the Logic App Workflow. For use with certain resources like monitor_action_group and security_center_automation.
  /// [logicAppId] Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the HTTP Trigger to be created within the Logic App Workflow. Changing this forces a new resource to be created.
  TriggerCustomState({
    pulumi.Output<String>? body,
    pulumi.Output<String>? callbackUrl,
    pulumi.Output<String>? logicAppId,
    pulumi.Output<String>? name,
  }) :
      body = pulumi.Input.asOptionalInput<String>(body),
      callbackUrl = pulumi.Input.asOptionalInput<String>(callbackUrl),
      logicAppId = pulumi.Input.asOptionalInput<String>(logicAppId),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': ?body,
      'callbackUrl': ?callbackUrl,
      'logicAppId': ?logicAppId,
      'name': ?name,
    };
  }

  factory TriggerCustomState.fromMap(Map<String, dynamic> map) {
    return TriggerCustomState(
      body: map['body'] == null ? null : pulumi.Output.create<String>(map['body'] as String),
      callbackUrl: map['callbackUrl'] == null ? null : pulumi.Output.create<String>(map['callbackUrl'] as String),
      logicAppId: map['logicAppId'] == null ? null : pulumi.Output.create<String>(map['logicAppId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

