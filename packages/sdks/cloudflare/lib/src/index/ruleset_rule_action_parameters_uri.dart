// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ruleset_rule_action_parameters_uri_path.dart';
import 'ruleset_rule_action_parameters_uri_query.dart';

class RulesetRuleActionParametersUri {
  /// A URI path rewrite.
  final pulumi.Input<RulesetRuleActionParametersUriPath?>? path;
  /// A URI query rewrite.
  final pulumi.Input<RulesetRuleActionParametersUriQuery?>? query;

  /// Creates a new [RulesetRuleActionParametersUri].
  /// [path] A URI path rewrite.
  /// [query] A URI query rewrite.
  const RulesetRuleActionParametersUri({
    this.path,
    this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersUriPath, Map<String, dynamic>>(path, (value) => value.toMap()),
      'query': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersUriQuery, Map<String, dynamic>>(query, (value) => value.toMap()),
    };
  }

  factory RulesetRuleActionParametersUri.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersUri(
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersUriPath.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      query: (() { final guardedValue = map['query']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersUriQuery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
