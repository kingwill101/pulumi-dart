// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ruleset_rule_action_parameters_from_value_target_url.dart';

class GetRulesetRuleActionParametersFromValue {
  /// Whether to keep the query string of the original request.
  final pulumi.Input<bool> preserveQueryString;
  /// The status code to use for the redirect.
  final pulumi.Input<int> statusCode;
  /// A URL to redirect the request to.
  final pulumi.Input<GetRulesetRuleActionParametersFromValueTargetUrl> targetUrl;

  /// Creates a new [GetRulesetRuleActionParametersFromValue].
  /// [preserveQueryString] Whether to keep the query string of the original request.
  /// [statusCode] The status code to use for the redirect.
  /// [targetUrl] A URL to redirect the request to.
  const GetRulesetRuleActionParametersFromValue({
    required this.preserveQueryString,
    required this.statusCode,
    required this.targetUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preserveQueryString': preserveQueryString,
      'statusCode': statusCode,
      'targetUrl': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersFromValueTargetUrl, Map<String, dynamic>>(targetUrl, (value) => value.toMap()),
    };
  }

  factory GetRulesetRuleActionParametersFromValue.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersFromValue(
      preserveQueryString: pulumi.Input.fromValue(map['preserveQueryString'] as bool),
      statusCode: pulumi.Input.fromValue((map['statusCode'] as num).toInt()),
      targetUrl: pulumi.Input.fromValue(GetRulesetRuleActionParametersFromValueTargetUrl.fromMap((map['targetUrl']! as Map).cast<String, dynamic>())),
    );
  }
}
