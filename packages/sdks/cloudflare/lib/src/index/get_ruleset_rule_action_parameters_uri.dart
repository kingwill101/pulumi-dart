// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ruleset_rule_action_parameters_uri_path.dart';
import 'get_ruleset_rule_action_parameters_uri_query.dart';

class GetRulesetRuleActionParametersUri {
  /// Whether to propagate the rewritten URI to origin.
  final pulumi.Input<bool> origin;
  /// A URI path rewrite.
  final pulumi.Input<GetRulesetRuleActionParametersUriPath> path;
  /// A URI query rewrite.
  final pulumi.Input<GetRulesetRuleActionParametersUriQuery> query;

  /// Creates a new [GetRulesetRuleActionParametersUri].
  /// [origin] Whether to propagate the rewritten URI to origin.
  /// [path] A URI path rewrite.
  /// [query] A URI query rewrite.
  const GetRulesetRuleActionParametersUri({
    required this.origin,
    required this.path,
    required this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'origin': origin,
      'path': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersUriPath, Map<String, dynamic>>(path, (value) => value.toMap()),
      'query': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersUriQuery, Map<String, dynamic>>(query, (value) => value.toMap()),
    };
  }

  factory GetRulesetRuleActionParametersUri.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersUri(
      origin: pulumi.Input.fromValue(map['origin'] as bool),
      path: pulumi.Input.fromValue(GetRulesetRuleActionParametersUriPath.fromMap((map['path']! as Map).cast<String, dynamic>())),
      query: pulumi.Input.fromValue(GetRulesetRuleActionParametersUriQuery.fromMap((map['query']! as Map).cast<String, dynamic>())),
    );
  }
}
