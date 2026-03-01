// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_insights_log_analytics_workspace.dart';

class FirewallPolicyInsights {
  /// The ID of the default Log Analytics Workspace that the Firewalls associated with this Firewall Policy will send their logs to, when there is no location matches in the `log_analytics_workspace`.
  final String defaultLogAnalyticsWorkspaceId;
  /// Whether the insights functionality is enabled for this Firewall Policy.
  final bool enabled;
  /// A list of `log_analytics_workspace` block as defined below.
  final List<FirewallPolicyInsightsLogAnalyticsWorkspace>? logAnalyticsWorkspaces;
  /// The log retention period in days.
  final int? retentionInDays;

  /// Creates a new [FirewallPolicyInsights].
  /// [defaultLogAnalyticsWorkspaceId] The ID of the default Log Analytics Workspace that the Firewalls associated with this Firewall Policy will send their logs to, when there is no location matches in the `log_analytics_workspace`.
  /// [enabled] Whether the insights functionality is enabled for this Firewall Policy.
  /// [logAnalyticsWorkspaces] A list of `log_analytics_workspace` block as defined below.
  /// [retentionInDays] The log retention period in days.
  FirewallPolicyInsights({
    required this.defaultLogAnalyticsWorkspaceId,
    required this.enabled,
    this.logAnalyticsWorkspaces,
    this.retentionInDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultLogAnalyticsWorkspaceId': defaultLogAnalyticsWorkspaceId,
      'enabled': enabled,
      'logAnalyticsWorkspaces': ?logAnalyticsWorkspaces == null ? null : pulumi.Input.encodeList<FirewallPolicyInsightsLogAnalyticsWorkspace, Map<String, dynamic>>(logAnalyticsWorkspaces!, (value) => value.toMap()),
      'retentionInDays': ?retentionInDays,
    };
  }

  factory FirewallPolicyInsights.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyInsights(
      defaultLogAnalyticsWorkspaceId: map['defaultLogAnalyticsWorkspaceId'] as String,
      enabled: map['enabled'] as bool,
      logAnalyticsWorkspaces: map['logAnalyticsWorkspaces'] == null ? null : pulumi.Input.decodeList<FirewallPolicyInsightsLogAnalyticsWorkspace>(map['logAnalyticsWorkspaces'], (value) => FirewallPolicyInsightsLogAnalyticsWorkspace.fromMap((value as Map).cast<String, dynamic>())),
      retentionInDays: map['retentionInDays'] == null ? null : map['retentionInDays'] as int,
    );
  }
}

