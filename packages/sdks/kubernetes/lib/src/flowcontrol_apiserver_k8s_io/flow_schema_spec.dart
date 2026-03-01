// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_distinguisher_method.dart';
import 'policy_rules_with_subjects.dart';
import 'priority_level_configuration_reference.dart';

/// FlowSchemaSpec describes how the FlowSchema's specification looks like.
class FlowSchemaSpec {
  /// `distinguisherMethod` defines how to compute the flow distinguisher for requests that match this schema. `nil` specifies that the distinguisher is disabled and thus will always be the empty string.
  final FlowDistinguisherMethod? distinguisherMethod;
  /// `matchingPrecedence` is used to choose among the FlowSchemas that match a given request. The chosen FlowSchema is among those with the numerically lowest (which we take to be logically highest) MatchingPrecedence.  Each MatchingPrecedence value must be ranged in [1,10000]. Note that if the precedence is not specified, it will be set to 1000 as default.
  final int? matchingPrecedence;
  /// `priorityLevelConfiguration` should reference a PriorityLevelConfiguration in the cluster. If the reference cannot be resolved, the FlowSchema will be ignored and marked as invalid in its status. Required.
  final PriorityLevelConfigurationReference priorityLevelConfiguration;
  /// `rules` describes which requests will match this flow schema. This FlowSchema matches a request if and only if at least one member of rules matches the request. if it is an empty slice, there will be no requests matching the FlowSchema.
  final List<PolicyRulesWithSubjects>? rules;

  /// Creates a new [FlowSchemaSpec].
  /// [distinguisherMethod] `distinguisherMethod` defines how to compute the flow distinguisher for requests that match this schema. `nil` specifies that the distinguisher is disabled and thus will always be the empty string.
  /// [matchingPrecedence] `matchingPrecedence` is used to choose among the FlowSchemas that match a given request. The chosen FlowSchema is among those with the numerically lowest (which we take to be logically highest) MatchingPrecedence.  Each MatchingPrecedence value must be ranged in [1,10000]. Note that if the precedence is not specified, it will be set to 1000 as default.
  /// [priorityLevelConfiguration] `priorityLevelConfiguration` should reference a PriorityLevelConfiguration in the cluster. If the reference cannot be resolved, the FlowSchema will be ignored and marked as invalid in its status. Required.
  /// [rules] `rules` describes which requests will match this flow schema. This FlowSchema matches a request if and only if at least one member of rules matches the request. if it is an empty slice, there will be no requests matching the FlowSchema.
  FlowSchemaSpec({
    this.distinguisherMethod,
    this.matchingPrecedence,
    required this.priorityLevelConfiguration,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distinguisherMethod': ?distinguisherMethod == null ? null : distinguisherMethod!.toMap(),
      'matchingPrecedence': ?matchingPrecedence,
      'priorityLevelConfiguration': priorityLevelConfiguration.toMap(),
      'rules': ?rules == null ? null : pulumi.Input.encodeList<PolicyRulesWithSubjects, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory FlowSchemaSpec.fromMap(Map<String, dynamic> map) {
    return FlowSchemaSpec(
      distinguisherMethod: map['distinguisherMethod'] == null ? null : FlowDistinguisherMethod.fromMap((map['distinguisherMethod'] as Map).cast<String, dynamic>()),
      matchingPrecedence: map['matchingPrecedence'] == null ? null : map['matchingPrecedence'] as int,
      priorityLevelConfiguration: PriorityLevelConfigurationReference.fromMap((map['priorityLevelConfiguration'] as Map).cast<String, dynamic>()),
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<PolicyRulesWithSubjects>(map['rules'], (value) => PolicyRulesWithSubjects.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

