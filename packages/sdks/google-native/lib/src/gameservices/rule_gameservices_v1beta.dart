// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'condition_gameservices_v1beta.dart';
import 'log_config_gameservices_v1beta.dart';
import 'rule_action_gameservices_v1beta.dart';

/// A rule to be applied in a Policy.
class RuleGameservicesV1beta {
  /// Required
  final pulumi.Input<RuleActionGameservicesV1beta>? action;
  /// Additional restrictions that must be met. All conditions must pass for the rule to match.
  final pulumi.Input<List<ConditionGameservicesV1beta>>? conditions;
  /// Human-readable description of the rule.
  final pulumi.Input<String>? description;
  /// If one or more 'in' clauses are specified, the rule matches if the PRINCIPAL/AUTHORITY_SELECTOR is in at least one of these entries.
  final pulumi.Input<List<String>>? in_;
  /// The config returned to callers of CheckPolicy for any entries that match the LOG action.
  final pulumi.Input<List<LogConfigGameservicesV1beta>>? logConfig;
  /// If one or more 'not_in' clauses are specified, the rule matches if the PRINCIPAL/AUTHORITY_SELECTOR is in none of the entries. The format for in and not_in entries can be found at in the Local IAM documentation (see go/local-iam#features).
  final pulumi.Input<List<String>>? notIn;
  /// A permission is a string of form '..' (e.g., 'storage.buckets.list'). A value of '*' matches all permissions, and a verb part of '*' (e.g., 'storage.buckets.*') matches all verbs.
  final pulumi.Input<List<String>>? permissions;

  /// Creates a new [RuleGameservicesV1beta].
  /// [action] Required
  /// [conditions] Additional restrictions that must be met. All conditions must pass for the rule to match.
  /// [description] Human-readable description of the rule.
  /// [in_] If one or more 'in' clauses are specified, the rule matches if the PRINCIPAL/AUTHORITY_SELECTOR is in at least one of these entries.
  /// [logConfig] The config returned to callers of CheckPolicy for any entries that match the LOG action.
  /// [notIn] If one or more 'not_in' clauses are specified, the rule matches if the PRINCIPAL/AUTHORITY_SELECTOR is in none of the entries. The format for in and not_in entries can be found at in the Local IAM documentation (see go/local-iam#features).
  /// [permissions] A permission is a string of form '..' (e.g., 'storage.buckets.list'). A value of '*' matches all permissions, and a verb part of '*' (e.g., 'storage.buckets.*') matches all verbs.
  RuleGameservicesV1beta({
    this.action,
    this.conditions,
    this.description,
    this.in_,
    this.logConfig,
    this.notIn,
    this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<RuleActionGameservicesV1beta, String>(action, (value) => value.value),
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<ConditionGameservicesV1beta>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ConditionGameservicesV1beta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'in': ?in_,
      'logConfig': ?pulumi.Input.mapOptionalInputValue<List<LogConfigGameservicesV1beta>, List<Map<String, dynamic>>>(logConfig, (value) => pulumi.Input.encodeList<LogConfigGameservicesV1beta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notIn': ?notIn,
      'permissions': ?permissions,
    };
  }

  factory RuleGameservicesV1beta.fromMap(Map<String, dynamic> map) {
    return RuleGameservicesV1beta(
      action: map['action'] == null ? null : (RuleActionGameservicesV1beta.fromValue(map['action']! as String)).input(),
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<ConditionGameservicesV1beta>(map['conditions']!, (value) => ConditionGameservicesV1beta.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      in_: map['in'] == null ? null : ((map['in']! as List).cast<String>()).input(),
      logConfig: map['logConfig'] == null ? null : (pulumi.Input.decodeList<LogConfigGameservicesV1beta>(map['logConfig']!, (value) => LogConfigGameservicesV1beta.fromMap((value as Map).cast<String, dynamic>()))).input(),
      notIn: map['notIn'] == null ? null : ((map['notIn']! as List).cast<String>()).input(),
      permissions: map['permissions'] == null ? null : ((map['permissions']! as List).cast<String>()).input(),
    );
  }
}

