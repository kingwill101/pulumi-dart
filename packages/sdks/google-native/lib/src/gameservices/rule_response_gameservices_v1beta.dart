// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'condition_response_gameservices_v1beta.dart';
import 'log_config_response_gameservices_v1beta.dart';

/// A rule to be applied in a Policy.
class RuleResponseGameservicesV1beta {
  /// Required
  final pulumi.Input<String> action;
  /// Additional restrictions that must be met. All conditions must pass for the rule to match.
  final pulumi.Input<List<ConditionResponseGameservicesV1beta>> conditions;
  /// Human-readable description of the rule.
  final pulumi.Input<String> description;
  /// If one or more 'in' clauses are specified, the rule matches if the PRINCIPAL/AUTHORITY_SELECTOR is in at least one of these entries.
  final pulumi.Input<List<String>> in_;
  /// The config returned to callers of CheckPolicy for any entries that match the LOG action.
  final pulumi.Input<List<LogConfigResponseGameservicesV1beta>> logConfig;
  /// If one or more 'not_in' clauses are specified, the rule matches if the PRINCIPAL/AUTHORITY_SELECTOR is in none of the entries. The format for in and not_in entries can be found at in the Local IAM documentation (see go/local-iam#features).
  final pulumi.Input<List<String>> notIn;
  /// A permission is a string of form '..' (e.g., 'storage.buckets.list'). A value of '*' matches all permissions, and a verb part of '*' (e.g., 'storage.buckets.*') matches all verbs.
  final pulumi.Input<List<String>> permissions;

  /// Creates a new [RuleResponseGameservicesV1beta].
  /// [action] Required
  /// [conditions] Additional restrictions that must be met. All conditions must pass for the rule to match.
  /// [description] Human-readable description of the rule.
  /// [in_] If one or more 'in' clauses are specified, the rule matches if the PRINCIPAL/AUTHORITY_SELECTOR is in at least one of these entries.
  /// [logConfig] The config returned to callers of CheckPolicy for any entries that match the LOG action.
  /// [notIn] If one or more 'not_in' clauses are specified, the rule matches if the PRINCIPAL/AUTHORITY_SELECTOR is in none of the entries. The format for in and not_in entries can be found at in the Local IAM documentation (see go/local-iam#features).
  /// [permissions] A permission is a string of form '..' (e.g., 'storage.buckets.list'). A value of '*' matches all permissions, and a verb part of '*' (e.g., 'storage.buckets.*') matches all verbs.
  const RuleResponseGameservicesV1beta({
    required this.action,
    required this.conditions,
    required this.description,
    required this.in_,
    required this.logConfig,
    required this.notIn,
    required this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'conditions': pulumi.Input.mapInputValue<List<ConditionResponseGameservicesV1beta>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<ConditionResponseGameservicesV1beta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': description,
      'in': in_,
      'logConfig': pulumi.Input.mapInputValue<List<LogConfigResponseGameservicesV1beta>, List<Map<String, dynamic>>>(logConfig, (value) => pulumi.Input.encodeList<LogConfigResponseGameservicesV1beta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'notIn': notIn,
      'permissions': permissions,
    };
  }

  factory RuleResponseGameservicesV1beta.fromMap(Map<String, dynamic> map) {
    return RuleResponseGameservicesV1beta(
      action: pulumi.Input.fromValue(map['action'] as String),
      conditions: pulumi.Input.fromValue(pulumi.Input.decodeList<ConditionResponseGameservicesV1beta>(map['conditions']!, (value) => ConditionResponseGameservicesV1beta.fromMap((value as Map).cast<String, dynamic>()))),
      description: pulumi.Input.fromValue(map['description'] as String),
      in_: pulumi.Input.fromValue((map['in'] as List).cast<String>()),
      logConfig: pulumi.Input.fromValue(pulumi.Input.decodeList<LogConfigResponseGameservicesV1beta>(map['logConfig']!, (value) => LogConfigResponseGameservicesV1beta.fromMap((value as Map).cast<String, dynamic>()))),
      notIn: pulumi.Input.fromValue((map['notIn'] as List).cast<String>()),
      permissions: pulumi.Input.fromValue((map['permissions'] as List).cast<String>()),
    );
  }
}
