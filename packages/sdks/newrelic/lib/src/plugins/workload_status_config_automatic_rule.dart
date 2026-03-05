// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_status_config_automatic_rule_nrql_query.dart';
import 'workload_status_config_automatic_rule_rollup.dart';

class WorkloadStatusConfigAutomaticRule {
  /// A list of entity GUIDs composing the rule. At least one of `entity_guids` or `nrql_query` must be defined.
  final pulumi.Input<List<String>>? entityGuids;
  /// A list of entity search queries used to retrieve the entities that compose the rule. See Nested nrql_query blocks below for details. At least one of `entity_guids` or `nrql_query` must be defined.
  final pulumi.Input<List<WorkloadStatusConfigAutomaticRuleNrqlQuery>>? nrqlQueries;
  /// The input object used to represent a rollup strategy. See Nested rollup blocks below for details.
  final pulumi.Input<WorkloadStatusConfigAutomaticRuleRollup> rollup;

  /// Creates a new [WorkloadStatusConfigAutomaticRule].
  /// [entityGuids] A list of entity GUIDs composing the rule. At least one of `entity_guids` or `nrql_query` must be defined.
  /// [nrqlQueries] A list of entity search queries used to retrieve the entities that compose the rule. See Nested nrql_query blocks below for details. At least one of `entity_guids` or `nrql_query` must be defined.
  /// [rollup] The input object used to represent a rollup strategy. See Nested rollup blocks below for details.
  WorkloadStatusConfigAutomaticRule({
    this.entityGuids,
    this.nrqlQueries,
    required this.rollup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityGuids': ?entityGuids,
      'nrqlQueries': ?pulumi.Input.mapOptionalInputValue<List<WorkloadStatusConfigAutomaticRuleNrqlQuery>, List<Map<String, dynamic>>>(nrqlQueries, (value) => pulumi.Input.encodeList<WorkloadStatusConfigAutomaticRuleNrqlQuery, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rollup': pulumi.Input.mapInputValue<WorkloadStatusConfigAutomaticRuleRollup, Map<String, dynamic>>(rollup, (value) => value.toMap()),
    };
  }

  factory WorkloadStatusConfigAutomaticRule.fromMap(Map<String, dynamic> map) {
    return WorkloadStatusConfigAutomaticRule(
      entityGuids: (() { final guardedValue = map['entityGuids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nrqlQueries: (() { final guardedValue = map['nrqlQueries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkloadStatusConfigAutomaticRuleNrqlQuery>(guardedValue, (value) => WorkloadStatusConfigAutomaticRuleNrqlQuery.fromMap((value as Map).cast<String, dynamic>()))); })(),
      rollup: pulumi.Input.fromValue(WorkloadStatusConfigAutomaticRuleRollup.fromMap((map['rollup']! as Map).cast<String, dynamic>())),
    );
  }
}

