// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// Log Analytics Workspace for Firewall Policy Insights.
class FirewallPolicyLogAnalyticsWorkspaceResponse {
  /// Region to configure the Workspace.
  final pulumi.Input<String>? region;
  /// The workspace Id for Firewall Policy Insights.
  final pulumi.Input<SubResourceResponse>? workspaceId;

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
      'workspaceId': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(workspaceId, (value) => value.toMap()),
    };
  }

  factory FirewallPolicyLogAnalyticsWorkspaceResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyLogAnalyticsWorkspaceResponse(
      region: map['region'] == null ? null : (map['region']! as String).input(),
      workspaceId: map['workspaceId'] == null ? null : (SubResourceResponse.fromMap((map['workspaceId']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

