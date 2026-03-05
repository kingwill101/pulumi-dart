// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_log_analytics_resources_response.dart';

/// Firewall Policy Insights.
class FirewallPolicyInsightsResponse {
  /// A flag to indicate if the insights are enabled on the policy.
  final pulumi.Input<bool>? isEnabled;
  /// Workspaces needed to configure the Firewall Policy Insights.
  final pulumi.Input<FirewallPolicyLogAnalyticsResourcesResponse>? logAnalyticsResources;
  /// Number of days the insights should be enabled on the policy.
  final pulumi.Input<int>? retentionDays;

  /// Creates a new [FirewallPolicyInsightsResponse].
  /// [isEnabled] A flag to indicate if the insights are enabled on the policy.
  /// [logAnalyticsResources] Workspaces needed to configure the Firewall Policy Insights.
  /// [retentionDays] Number of days the insights should be enabled on the policy.
  FirewallPolicyInsightsResponse({
    this.isEnabled,
    this.logAnalyticsResources,
    this.retentionDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isEnabled': ?isEnabled,
      'logAnalyticsResources': ?pulumi.Input.mapOptionalInputValue<FirewallPolicyLogAnalyticsResourcesResponse, Map<String, dynamic>>(logAnalyticsResources, (value) => value.toMap()),
      'retentionDays': ?retentionDays,
    };
  }

  factory FirewallPolicyInsightsResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyInsightsResponse(
      isEnabled: (() { final guardedValue = map['isEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logAnalyticsResources: (() { final guardedValue = map['logAnalyticsResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirewallPolicyLogAnalyticsResourcesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retentionDays: (() { final guardedValue = map['retentionDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

