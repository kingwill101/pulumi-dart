// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_log_analytics_workspace_response.dart';
import 'sub_resource_response.dart';

/// Log Analytics Resources for Firewall Policy Insights.
class FirewallPolicyLogAnalyticsResourcesResponse {
  /// The default workspace Id for Firewall Policy Insights.
  final pulumi.Input<SubResourceResponse>? defaultWorkspaceId;
  /// List of workspaces for Firewall Policy Insights.
  final pulumi.Input<List<FirewallPolicyLogAnalyticsWorkspaceResponse>>? workspaces;

  /// Creates a new [FirewallPolicyLogAnalyticsResourcesResponse].
  /// [defaultWorkspaceId] The default workspace Id for Firewall Policy Insights.
  /// [workspaces] List of workspaces for Firewall Policy Insights.
  const FirewallPolicyLogAnalyticsResourcesResponse({
    this.defaultWorkspaceId,
    this.workspaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultWorkspaceId': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(defaultWorkspaceId, (value) => value.toMap()),
      'workspaces': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyLogAnalyticsWorkspaceResponse>, List<Map<String, dynamic>>>(workspaces, (value) => pulumi.Input.encodeList<FirewallPolicyLogAnalyticsWorkspaceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FirewallPolicyLogAnalyticsResourcesResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyLogAnalyticsResourcesResponse(
      defaultWorkspaceId: (() { final guardedValue = map['defaultWorkspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workspaces: (() { final guardedValue = map['workspaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallPolicyLogAnalyticsWorkspaceResponse>(guardedValue, (value) => FirewallPolicyLogAnalyticsWorkspaceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
