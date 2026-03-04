// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sentinel_alert_rule_anomaly_built_in_alert_rule_anomaly_built_in_args_doc}
/// The set of arguments for AlertRuleAnomalyBuiltIn.
/// {@endtemplate}
/// {@macro pulumi_sentinel_alert_rule_anomaly_built_in_alert_rule_anomaly_built_in_args_doc}
class AlertRuleAnomalyBuiltInArgs {
  /// The Display Name of the built-in Anomaly Alert Rule.
  ///
  /// &gt; **Note:** One of `name` or `display_name` block must be specified.
  final pulumi.Input<String>? displayName;

  /// Should the Built-in Anomaly Alert Rule be enabled?
  final pulumi.Input<bool> enabled;

  /// The ID of the Log Analytics Workspace. Changing this forces a new Built-in Anomaly Alert Rule to be created.
  final pulumi.Input<String> logAnalyticsWorkspaceId;

  /// mode of the Built-in Anomaly Alert Rule. Possible Values are `Production` and `Flighting`.
  final pulumi.Input<String> mode;

  /// The Name of the built-in Anomaly Alert Rule.
  final pulumi.Input<String>? name;

  /// Creates a new [AlertRuleAnomalyBuiltInArgs].
  /// [displayName] The Display Name of the built-in Anomaly Alert Rule.
  /// [enabled] Should the Built-in Anomaly Alert Rule be enabled?
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace. Changing this forces a new Built-in Anomaly Alert Rule to be created.
  /// [mode] mode of the Built-in Anomaly Alert Rule. Possible Values are `Production` and `Flighting`.
  /// [name] The Name of the built-in Anomaly Alert Rule.
  AlertRuleAnomalyBuiltInArgs({
    this.displayName,
    required this.enabled,
    required this.logAnalyticsWorkspaceId,
    required this.mode,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'enabled': enabled,
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'mode': mode,
      'name': ?name,
    };
  }

  factory AlertRuleAnomalyBuiltInArgs.fromMap(Map<String, dynamic> map) {
    return AlertRuleAnomalyBuiltInArgs(
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      logAnalyticsWorkspaceId: pulumi.Input.fromValue(
        map['logAnalyticsWorkspaceId'] as String,
      ),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
