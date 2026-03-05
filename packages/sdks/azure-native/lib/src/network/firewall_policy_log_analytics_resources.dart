// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_log_analytics_workspace.dart';
import 'sub_resource.dart';

/// Log Analytics Resources for Firewall Policy Insights.
class FirewallPolicyLogAnalyticsResources {
  /// The default workspace Id for Firewall Policy Insights.
  final pulumi.Input<SubResource>? defaultWorkspaceId;
  /// List of workspaces for Firewall Policy Insights.
  final pulumi.Input<List<FirewallPolicyLogAnalyticsWorkspace>>? workspaces;

  /// Creates a new [FirewallPolicyLogAnalyticsResources].
  /// [defaultWorkspaceId] The default workspace Id for Firewall Policy Insights.
  /// [workspaces] List of workspaces for Firewall Policy Insights.
  FirewallPolicyLogAnalyticsResources({
    this.defaultWorkspaceId,
    this.workspaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultWorkspaceId': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(defaultWorkspaceId, (value) => value.toMap()),
      'workspaces': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyLogAnalyticsWorkspace>, List<Map<String, dynamic>>>(workspaces, (value) => pulumi.Input.encodeList<FirewallPolicyLogAnalyticsWorkspace, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FirewallPolicyLogAnalyticsResources.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyLogAnalyticsResources(
      defaultWorkspaceId: (() { final guardedValue = map['defaultWorkspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workspaces: (() { final guardedValue = map['workspaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallPolicyLogAnalyticsWorkspace>(guardedValue, (value) => FirewallPolicyLogAnalyticsWorkspace.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

