// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_log_analytics_workspace_response.dart';
import 'sub_resource_response.dart';

/// Log Analytics Resources for Firewall Policy Insights.
class FirewallPolicyLogAnalyticsResourcesResponse {
  /// The default workspace Id for Firewall Policy Insights.
  final SubResourceResponse? defaultWorkspaceId;
  /// List of workspaces for Firewall Policy Insights.
  final List<FirewallPolicyLogAnalyticsWorkspaceResponse>? workspaces;

  /// Creates a new [FirewallPolicyLogAnalyticsResourcesResponse].
  /// [defaultWorkspaceId] The default workspace Id for Firewall Policy Insights.
  /// [workspaces] List of workspaces for Firewall Policy Insights.
  FirewallPolicyLogAnalyticsResourcesResponse({
    this.defaultWorkspaceId,
    this.workspaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultWorkspaceId': ?defaultWorkspaceId == null ? null : defaultWorkspaceId!.toMap(),
      'workspaces': ?workspaces == null ? null : pulumi.Input.encodeList<FirewallPolicyLogAnalyticsWorkspaceResponse, Map<String, dynamic>>(workspaces!, (value) => value.toMap()),
    };
  }

  factory FirewallPolicyLogAnalyticsResourcesResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyLogAnalyticsResourcesResponse(
      defaultWorkspaceId: map['defaultWorkspaceId'] == null ? null : SubResourceResponse.fromMap((map['defaultWorkspaceId'] as Map).cast<String, dynamic>()),
      workspaces: map['workspaces'] == null ? null : pulumi.Input.decodeList<FirewallPolicyLogAnalyticsWorkspaceResponse>(map['workspaces'], (value) => FirewallPolicyLogAnalyticsWorkspaceResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

