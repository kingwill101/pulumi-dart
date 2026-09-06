// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Log Analytics Workspace to which event data will be exported. Security alerts data will reside in the 'SecurityAlert' table and the assessments data will reside in the 'SecurityRecommendation' table (under the 'Security'/'SecurityCenterFree' solutions). Note that in order to view the data in the workspace, the Security Center Log Analytics free/standard solution needs to be enabled on that workspace. To learn more about Microsoft Defender for Cloud continuous export capabilities, visit https://aka.ms/ASCExportLearnMore
class AutomationActionWorkspaceResponse {
  /// Enum. Indicates the action type.
  /// Expected value is 'Workspace'.
  final pulumi.Input<String> actionType;
  /// The fully qualified Log Analytics Workspace Azure Resource ID.
  final pulumi.Input<String?>? workspaceResourceId;

  /// Creates a new [AutomationActionWorkspaceResponse].
  /// [actionType] Enum. Indicates the action type.
  /// [workspaceResourceId] The fully qualified Log Analytics Workspace Azure Resource ID.
  const AutomationActionWorkspaceResponse({
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
      actionType: pulumi.Input.fromValue(map['actionType'] as String),
      workspaceResourceId: (() { final guardedValue = map['workspaceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
