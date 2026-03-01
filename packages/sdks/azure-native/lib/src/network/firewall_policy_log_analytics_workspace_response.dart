// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource_response.dart';

/// Log Analytics Workspace for Firewall Policy Insights.
class FirewallPolicyLogAnalyticsWorkspaceResponse {
  /// Region to configure the Workspace.
  final String? region;
  /// The workspace Id for Firewall Policy Insights.
  final SubResourceResponse? workspaceId;

  /// Creates a new [FirewallPolicyLogAnalyticsWorkspaceResponse].
  /// [region] Region to configure the Workspace.
  /// [workspaceId] The workspace Id for Firewall Policy Insights.
  FirewallPolicyLogAnalyticsWorkspaceResponse({
    this.region,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'workspaceId': ?workspaceId == null ? null : workspaceId!.toMap(),
    };
  }

  factory FirewallPolicyLogAnalyticsWorkspaceResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyLogAnalyticsWorkspaceResponse(
      region: map['region'] == null ? null : map['region'] as String,
      workspaceId: map['workspaceId'] == null ? null : SubResourceResponse.fromMap((map['workspaceId'] as Map).cast<String, dynamic>()),
    );
  }
}

