// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'condition.dart';
import 'log_config.dart';
import 'rule_action.dart';

/// A rule to be applied in a Policy.
class Rule {
  /// Required
  final pulumi.Input<RuleAction>? action;
  /// Additional restrictions that must be met. All conditions must pass for the rule to match.
  final pulumi.Input<List<Condition>>? conditions;
  /// Human-readable description of the rule.
  final pulumi.Input<String>? description;
  /// If one or more 'in' clauses are specified, the rule matches if the PRINCIPAL/AUTHORITY_SELECTOR is in at least one of these entries.
  final pulumi.Input<List<String>>? in_;
  /// The config returned to callers of CheckPolicy for any entries that match the LOG action.
  final pulumi.Input<List<LogConfig>>? logConfig;
  /// If one or more 'not_in' clauses are specified, the rule matches if the PRINCIPAL/AUTHORITY_SELECTOR is in none of the entries. The format for in and not_in entries can be found at in the Local IAM documentation (see go/local-iam#features).
  final pulumi.Input<List<String>>? notIn;
  /// A permission is a string of form '..' (e.g., 'storage.buckets.list'). A value of '*' matches all permissions, and a verb part of '*' (e.g., 'storage.buckets.*') matches all verbs.
  final pulumi.Input<List<String>>? permissions;

  /// Creates a new [Rule].
  /// [action] Required
  /// [conditions] Additional restrictions that must be met. All conditions must pass for the rule to match.
  /// [description] Human-readable description of the rule.
  /// [in_] If one or more 'in' clauses are specified, the rule matches if the PRINCIPAL/AUTHORITY_SELECTOR is in at least one of these entries.
  /// [logConfig] The config returned to callers of CheckPolicy for any entries that match the LOG action.
  /// [notIn] If one or more 'not_in' clauses are specified, the rule matches if the PRINCIPAL/AUTHORITY_SELECTOR is in none of the entries. The format for in and not_in entries can be found at in the Local IAM documentation (see go/local-iam#features).
  /// [permissions] A permission is a string of form '..' (e.g., 'storage.buckets.list'). A value of '*' matches all permissions, and a verb part of '*' (e.g., 'storage.buckets.*') matches all verbs.
  Rule({
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
      'action': ?pulumi.Input.mapOptionalInputValue<RuleAction, String>(action, (value) => value.wireValue),
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<Condition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<Condition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'in': ?in_,
      'logConfig': ?pulumi.Input.mapOptionalInputValue<List<LogConfig>, List<Map<String, dynamic>>>(logConfig, (value) => pulumi.Input.encodeList<LogConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notIn': ?notIn,
      'permissions': ?permissions,
    };
  }

  factory Rule.fromMap(Map<String, dynamic> map) {
    return Rule(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleAction.fromValue(guardedValue as String)); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Condition>(guardedValue, (value) => Condition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      in_: (() { final guardedValue = map['in']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      logConfig: (() { final guardedValue = map['logConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LogConfig>(guardedValue, (value) => LogConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      notIn: (() { final guardedValue = map['notIn']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

