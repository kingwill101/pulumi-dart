// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Log Analytics Workspace to which event data will be exported. Security alerts data will reside in the 'SecurityAlert' table and the assessments data will reside in the 'SecurityRecommendation' table (under the 'Security'/'SecurityCenterFree' solutions). Note that in order to view the data in the workspace, the Security Center Log Analytics free/standard solution needs to be enabled on that workspace. To learn more about Microsoft Defender for Cloud continuous export capabilities, visit https://aka.ms/ASCExportLearnMore
class AutomationActionWorkspaceResponse {
  /// The type of the action that will be triggered by the Automation
  /// Expected value is 'Workspace'.
  final pulumi.Input<String> actionType;
  /// The fully qualified Log Analytics Workspace Azure Resource ID.
  final pulumi.Input<String>? workspaceResourceId;

  /// Creates a new [AutomationActionWorkspaceResponse].
  /// [actionType] The type of the action that will be triggered by the Automation
  /// [workspaceResourceId] The fully qualified Log Analytics Workspace Azure Resource ID.
  AutomationActionWorkspaceResponse({
    required this.actionType,
    this.workspaceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
      'workspaceResourceId': ?workspaceResourceId,
    };
  }

  factory AutomationActionWorkspaceResponse.fromMap(Map<String, dynamic> map) {
    return AutomationActionWorkspaceResponse(
      actionType: (map['actionType'] as String).input(),
      workspaceResourceId: map['workspaceResourceId'] == null ? null : (map['workspaceResourceId']! as String).input(),
    );
  }
}

