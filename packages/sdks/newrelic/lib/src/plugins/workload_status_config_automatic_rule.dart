// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_status_config_automatic_rule_nrql_query.dart';
import 'workload_status_config_automatic_rule_rollup.dart';

class WorkloadStatusConfigAutomaticRule {
  /// A list of entity GUIDs composing the rule. At least one of `entity_guids` or `nrql_query` must be defined.
  final List<String>? entityGuids;
  /// A list of entity search queries used to retrieve the entities that compose the rule. See Nested nrql_query blocks below for details. At least one of `entity_guids` or `nrql_query` must be defined.
  final List<WorkloadStatusConfigAutomaticRuleNrqlQuery>? nrqlQueries;
  /// The input object used to represent a rollup strategy. See Nested rollup blocks below for details.
  final WorkloadStatusConfigAutomaticRuleRollup rollup;

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
      'nrqlQueries': ?nrqlQueries == null ? null : pulumi.Input.encodeList<WorkloadStatusConfigAutomaticRuleNrqlQuery, Map<String, dynamic>>(nrqlQueries!, (value) => value.toMap()),
      'rollup': rollup.toMap(),
    };
  }

  factory WorkloadStatusConfigAutomaticRule.fromMap(Map<String, dynamic> map) {
    return WorkloadStatusConfigAutomaticRule(
      entityGuids: map['entityGuids'] == null ? null : (map['entityGuids'] as List).cast<String>(),
      nrqlQueries: map['nrqlQueries'] == null ? null : pulumi.Input.decodeList<WorkloadStatusConfigAutomaticRuleNrqlQuery>(map['nrqlQueries'], (value) => WorkloadStatusConfigAutomaticRuleNrqlQuery.fromMap((value as Map).cast<String, dynamic>())),
      rollup: WorkloadStatusConfigAutomaticRuleRollup.fromMap((map['rollup'] as Map).cast<String, dynamic>()),
    );
  }
}

