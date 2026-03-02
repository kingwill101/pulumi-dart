// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_microsoft_security_incident_creation_alert_rule_args_doc}
/// Arguments for getMicrosoftSecurityIncidentCreationAlertRule.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_microsoft_security_incident_creation_alert_rule_args_doc}
class GetMicrosoftSecurityIncidentCreationAlertRuleArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Alert rule ID
  final pulumi.Input<String> ruleId;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetMicrosoftSecurityIncidentCreationAlertRuleArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleId] Alert rule ID
  /// [workspaceName] The name of the workspace.
  GetMicrosoftSecurityIncidentCreationAlertRuleArgs({
    required this.resourceGroupName,
    required this.ruleId,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'ruleId': ruleId,
      'workspaceName': workspaceName,
    };
  }

  factory GetMicrosoftSecurityIncidentCreationAlertRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetMicrosoftSecurityIncidentCreationAlertRuleArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      ruleId: (map['ruleId'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

