// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_log_analytics_resources.dart';

/// Firewall Policy Insights.
class FirewallPolicyInsights {
  /// A flag to indicate if the insights are enabled on the policy.
  final pulumi.Input<bool>? isEnabled;
  /// Workspaces needed to configure the Firewall Policy Insights.
  final pulumi.Input<FirewallPolicyLogAnalyticsResources>? logAnalyticsResources;
  /// Number of days the insights should be enabled on the policy.
  final pulumi.Input<int>? retentionDays;

  /// Creates a new [FirewallPolicyInsights].
  /// [isEnabled] A flag to indicate if the insights are enabled on the policy.
  /// [logAnalyticsResources] Workspaces needed to configure the Firewall Policy Insights.
  /// [retentionDays] Number of days the insights should be enabled on the policy.
  FirewallPolicyInsights({
    this.isEnabled,
    this.logAnalyticsResources,
    this.retentionDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isEnabled': ?isEnabled,
      'logAnalyticsResources': ?pulumi.Input.mapOptionalInputValue<FirewallPolicyLogAnalyticsResources, Map<String, dynamic>>(logAnalyticsResources, (value) => value.toMap()),
      'retentionDays': ?retentionDays,
    };
  }

  factory FirewallPolicyInsights.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyInsights(
      isEnabled: map['isEnabled'] == null ? null : (map['isEnabled']! as bool).input(),
      logAnalyticsResources: map['logAnalyticsResources'] == null ? null : (FirewallPolicyLogAnalyticsResources.fromMap((map['logAnalyticsResources']! as Map).cast<String, dynamic>())).input(),
      retentionDays: map['retentionDays'] == null ? null : (map['retentionDays']! as int).input(),
    );
  }
}

