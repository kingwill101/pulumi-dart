// ignore_for_file: unused_element, unnecessary_cast


/// The logic app action that should be triggered. To learn more about Microsoft Defender for Cloud's Workflow Automation capabilities, visit https://aka.ms/ASCWorkflowAutomationLearnMore
class AutomationActionLogicApp {
  /// The type of the action that will be triggered by the Automation
  /// Expected value is 'LogicApp'.
  final String actionType;
  /// The triggered Logic App Azure Resource ID. This can also reside on other subscriptions, given that you have permissions to trigger the Logic App
  final String? logicAppResourceId;
  /// The Logic App trigger URI endpoint (it will not be included in any response).
  final String? uri;

  /// Creates a new [AutomationActionLogicApp].
  /// [actionType] The type of the action that will be triggered by the Automation
  /// [logicAppResourceId] The triggered Logic App Azure Resource ID. This can also reside on other subscriptions, given that you have permissions to trigger the Logic App
  /// [uri] The Logic App trigger URI endpoint (it will not be included in any response).
  AutomationActionLogicApp({
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

  factory AutomationActionLogicApp.fromMap(Map<String, dynamic> map) {
    return AutomationActionLogicApp(
      actionType: map['actionType'] as String,
      logicAppResourceId: map['logicAppResourceId'] == null ? null : map['logicAppResourceId'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}

