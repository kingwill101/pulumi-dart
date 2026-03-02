// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_get_scheduled_query_rules_log_get_scheduled_query_rules_log_args_doc}
/// Arguments for getScheduledQueryRulesLog.
/// {@endtemplate}
/// {@macro pulumi_monitoring_get_scheduled_query_rules_log_get_scheduled_query_rules_log_args_doc}
class GetScheduledQueryRulesLogArgs {
  /// Specifies the name of the scheduled query rule.
  final pulumi.Input<String> name;
  /// Specifies the name of the resource group where the scheduled query rule is located.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetScheduledQueryRulesLogArgs].
  /// [name] Specifies the name of the scheduled query rule.
  /// [resourceGroupName] Specifies the name of the resource group where the scheduled query rule is located.
  GetScheduledQueryRulesLogArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetScheduledQueryRulesLogArgs.fromMap(Map<String, dynamic> map) {
    return GetScheduledQueryRulesLogArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

