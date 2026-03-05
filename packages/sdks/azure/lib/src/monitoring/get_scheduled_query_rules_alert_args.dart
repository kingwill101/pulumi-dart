// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_get_scheduled_query_rules_alert_get_scheduled_query_rules_alert_args_doc}
/// Arguments for getScheduledQueryRulesAlert.
/// {@endtemplate}
/// {@macro pulumi_monitoring_get_scheduled_query_rules_alert_get_scheduled_query_rules_alert_args_doc}
class GetScheduledQueryRulesAlertArgs {
  /// Specifies the name of the scheduled query rule.
  final pulumi.Input<String> name;
  /// Specifies the name of the resource group where the scheduled query rule is located.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetScheduledQueryRulesAlertArgs].
  /// [name] Specifies the name of the scheduled query rule.
  /// [resourceGroupName] Specifies the name of the resource group where the scheduled query rule is located.
  GetScheduledQueryRulesAlertArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetScheduledQueryRulesAlertArgs.fromMap(Map<String, dynamic> map) {
    return GetScheduledQueryRulesAlertArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

