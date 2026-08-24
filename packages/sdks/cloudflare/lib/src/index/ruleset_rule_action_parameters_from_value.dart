// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ruleset_rule_action_parameters_from_value_target_url.dart';

class RulesetRuleActionParametersFromValue {
  /// Whether to keep the query string of the original request.
  final pulumi.Input<bool?>? preserveQueryString;
  /// The status code to use for the redirect.
  final pulumi.Input<int?>? statusCode;
  /// A URL to redirect the request to.
  final pulumi.Input<RulesetRuleActionParametersFromValueTargetUrl> targetUrl;

  /// Creates a new [RulesetRuleActionParametersFromValue].
  /// [preserveQueryString] Whether to keep the query string of the original request.
  /// [statusCode] The status code to use for the redirect.
  /// [targetUrl] A URL to redirect the request to.
  const RulesetRuleActionParametersFromValue({
    this.preserveQueryString,
    this.statusCode,
    required this.targetUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preserveQueryString': ?preserveQueryString,
      'statusCode': ?statusCode,
      'targetUrl': pulumi.Input.mapInputValue<RulesetRuleActionParametersFromValueTargetUrl, Map<String, dynamic>>(targetUrl, (value) => value.toMap()),
    };
  }

  factory RulesetRuleActionParametersFromValue.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersFromValue(
      preserveQueryString: (() { final guardedValue = map['preserveQueryString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      statusCode: (() { final guardedValue = map['statusCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      targetUrl: pulumi.Input.fromValue(RulesetRuleActionParametersFromValueTargetUrl.fromMap((map['targetUrl']! as Map).cast<String, dynamic>())),
    );
  }
}
