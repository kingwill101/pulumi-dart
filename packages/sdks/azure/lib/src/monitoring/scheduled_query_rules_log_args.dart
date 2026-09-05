// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_query_rules_log_criteria.dart';

/// {@template pulumi_monitoring_scheduled_query_rules_log_scheduled_query_rules_log_args_doc}
/// The set of arguments for ScheduledQueryRulesLog.
/// {@endtemplate}
/// {@macro pulumi_monitoring_scheduled_query_rules_log_scheduled_query_rules_log_args_doc}
class ScheduledQueryRulesLogArgs {
  /// A list of IDs of Resources referred into query.
  final pulumi.Input<List<String>?>? authorizedResourceIds;
  /// A `criteria` block as defined below.
  final pulumi.Input<ScheduledQueryRulesLogCriteria> criteria;
  /// The resource URI over which log search query is to be run. Changing this forces a new resource to be created.
  final pulumi.Input<String> dataSourceId;
  /// The description of the scheduled query rule.
  final pulumi.Input<String?>? description;
  /// Whether this scheduled query rule is enabled. Default is `true`.
  final pulumi.Input<bool?>? enabled;
  /// Specifies the Azure Region where the resource should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// The name of the scheduled query rule. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The name of the resource group in which to create the scheduled query rule instance. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ScheduledQueryRulesLogArgs].
  /// [authorizedResourceIds] A list of IDs of Resources referred into query.
  /// [criteria] A `criteria` block as defined below.
  /// [dataSourceId] The resource URI over which log search query is to be run. Changing this forces a new resource to be created.
  /// [description] The description of the scheduled query rule.
  /// [enabled] Whether this scheduled query rule is enabled. Default is `true`.
  /// [location] Specifies the Azure Region where the resource should exist. Changing this forces a new resource to be created.
  /// [name] The name of the scheduled query rule. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the scheduled query rule instance. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  const ScheduledQueryRulesLogArgs({
    this.authorizedResourceIds,
    required this.criteria,
    required this.dataSourceId,
    this.description,
    this.enabled,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedResourceIds': ?authorizedResourceIds,
      'criteria': pulumi.Input.mapInputValue<ScheduledQueryRulesLogCriteria, Map<String, dynamic>>(criteria, (value) => value.toMap()),
      'dataSourceId': dataSourceId,
      'description': ?description,
      'enabled': ?enabled,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ScheduledQueryRulesLogArgs.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryRulesLogArgs(
      authorizedResourceIds: (() { final guardedValue = map['authorizedResourceIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      criteria: pulumi.Input.fromValue(ScheduledQueryRulesLogCriteria.fromMap((map['criteria']! as Map).cast<String, dynamic>())),
      dataSourceId: pulumi.Input.fromValue(map['dataSourceId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
