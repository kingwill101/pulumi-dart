// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sentinel_get_alert_rule_anomaly_get_alert_rule_anomaly_args_doc}
/// Arguments for getAlertRuleAnomaly.
/// {@endtemplate}
/// {@macro pulumi_sentinel_get_alert_rule_anomaly_get_alert_rule_anomaly_args_doc}
class GetAlertRuleAnomalyArgs {
  /// The display name of this Sentinel Alert Rule Template. Either `displayName` or `name` have to be specified.
  ///
  /// &gt; **Note:** One of `name` or `displayName` must be specified.
  final pulumi.Input<String?>? displayName;
  /// The ID of the Log Analytics Workspace.
  final pulumi.Input<String> logAnalyticsWorkspaceId;
  /// The guid of this Sentinel Alert Rule Template. Either `displayName` or `name` have to be specified.
  final pulumi.Input<String?>? name;

  /// Creates a new [GetAlertRuleAnomalyArgs].
  /// [displayName] The display name of this Sentinel Alert Rule Template. Either `displayName` or `name` have to be specified.
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace.
  /// [name] The guid of this Sentinel Alert Rule Template. Either `displayName` or `name` have to be specified.
  const GetAlertRuleAnomalyArgs({
    this.displayName,
    required this.logAnalyticsWorkspaceId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'name': ?name,
    };
  }

  factory GetAlertRuleAnomalyArgs.fromMap(Map<String, dynamic> map) {
    return GetAlertRuleAnomalyArgs(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logAnalyticsWorkspaceId: pulumi.Input.fromValue(map['logAnalyticsWorkspaceId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
