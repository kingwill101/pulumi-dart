// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// Log Analytics Workspace for Firewall Policy Insights.
class FirewallPolicyLogAnalyticsWorkspace {
  /// Region to configure the Workspace.
  final pulumi.Input<String?>? region;
  /// The workspace Id for Firewall Policy Insights.
  final pulumi.Input<SubResource?>? workspaceId;

  /// Creates a new [FirewallPolicyLogAnalyticsWorkspace].
  /// [region] Region to configure the Workspace.
  /// [workspaceId] The workspace Id for Firewall Policy Insights.
  const FirewallPolicyLogAnalyticsWorkspace({
    this.region,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'workspaceId': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(workspaceId, (value) => value.toMap()),
    };
  }

  factory FirewallPolicyLogAnalyticsWorkspace.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyLogAnalyticsWorkspace(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
