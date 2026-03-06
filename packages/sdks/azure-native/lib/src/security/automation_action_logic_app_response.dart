// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The logic app action that should be triggered. To learn more about Microsoft Defender for Cloud's Workflow Automation capabilities, visit https://aka.ms/ASCWorkflowAutomationLearnMore
class AutomationActionLogicAppResponse {
  /// The type of the action that will be triggered by the Automation
  /// Expected value is 'LogicApp'.
  final pulumi.Input<String> actionType;
  /// The triggered Logic App Azure Resource ID. This can also reside on other subscriptions, given that you have permissions to trigger the Logic App
  final pulumi.Input<String>? logicAppResourceId;
  /// The Logic App trigger URI endpoint (it will not be included in any response).
  final pulumi.Input<String>? uri;

  /// Creates a new [AutomationActionLogicAppResponse].
  /// [actionType] The type of the action that will be triggered by the Automation
  /// [logicAppResourceId] The triggered Logic App Azure Resource ID. This can also reside on other subscriptions, given that you have permissions to trigger the Logic App
  /// [uri] The Logic App trigger URI endpoint (it will not be included in any response).
  const AutomationActionLogicAppResponse({
    required this.actionType,
    this.logicAppResourceId,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
      'logicAppResourceId': ?logicAppResourceId,
      'uri': ?uri,
    };
  }

  factory AutomationActionLogicAppResponse.fromMap(Map<String, dynamic> map) {
    return AutomationActionLogicAppResponse(
      actionType: pulumi.Input.fromValue(map['actionType'] as String),
      logicAppResourceId: (() { final guardedValue = map['logicAppResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

