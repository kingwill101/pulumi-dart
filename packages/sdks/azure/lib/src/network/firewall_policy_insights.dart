// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_insights_log_analytics_workspace.dart';

class FirewallPolicyInsights {
  /// The ID of the default Log Analytics Workspace that the Firewalls associated with this Firewall Policy will send their logs to, when there is no location matches in the `logAnalyticsWorkspace`.
  final pulumi.Input<String> defaultLogAnalyticsWorkspaceId;
  /// Whether the insights functionality is enabled for this Firewall Policy.
  final pulumi.Input<bool> enabled;
  /// A list of `logAnalyticsWorkspace` block as defined below.
  final pulumi.Input<List<FirewallPolicyInsightsLogAnalyticsWorkspace>?>? logAnalyticsWorkspaces;
  /// The log retention period in days.
  final pulumi.Input<int?>? retentionInDays;

  /// Creates a new [FirewallPolicyInsights].
  /// [defaultLogAnalyticsWorkspaceId] The ID of the default Log Analytics Workspace that the Firewalls associated with this Firewall Policy will send their logs to, when there is no location matches in the `logAnalyticsWorkspace`.
  /// [enabled] Whether the insights functionality is enabled for this Firewall Policy.
  /// [logAnalyticsWorkspaces] A list of `logAnalyticsWorkspace` block as defined below.
  /// [retentionInDays] The log retention period in days.
  const FirewallPolicyInsights({
    required this.defaultLogAnalyticsWorkspaceId,
    required this.enabled,
    this.logAnalyticsWorkspaces,
    this.retentionInDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultLogAnalyticsWorkspaceId': defaultLogAnalyticsWorkspaceId,
      'enabled': enabled,
      'logAnalyticsWorkspaces': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyInsightsLogAnalyticsWorkspace>, List<Map<String, dynamic>>>(logAnalyticsWorkspaces, (value) => pulumi.Input.encodeList<FirewallPolicyInsightsLogAnalyticsWorkspace, Map<String, dynamic>>(value, (value) => value.toMap())),
      'retentionInDays': ?retentionInDays,
    };
  }

  factory FirewallPolicyInsights.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyInsights(
      defaultLogAnalyticsWorkspaceId: pulumi.Input.fromValue(map['defaultLogAnalyticsWorkspaceId'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      logAnalyticsWorkspaces: (() { final guardedValue = map['logAnalyticsWorkspaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallPolicyInsightsLogAnalyticsWorkspace>(guardedValue, (value) => FirewallPolicyInsightsLogAnalyticsWorkspace.fromMap((value as Map).cast<String, dynamic>()))); })(),
      retentionInDays: (() { final guardedValue = map['retentionInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
