// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ruleset_rule_action_parameters_edge_ttl_status_code_ttl_status_code_range.dart';

class RulesetRuleActionParametersEdgeTtlStatusCodeTtl {
  /// A single status code to apply the TTL to.
  final pulumi.Input<int?>? statusCode;
  /// A range of status codes to apply the TTL to.
  final pulumi.Input<RulesetRuleActionParametersEdgeTtlStatusCodeTtlStatusCodeRange?>? statusCodeRange;
  /// The time to cache the response for (in seconds). A value of 0 is equivalent to setting the cache control header with the value "no-cache". A value of -1 is equivalent to setting the cache control header with the value of "no-store".
  final pulumi.Input<int> value;

  /// Creates a new [RulesetRuleActionParametersEdgeTtlStatusCodeTtl].
  /// [statusCode] A single status code to apply the TTL to.
  /// [statusCodeRange] A range of status codes to apply the TTL to.
  /// [value] The time to cache the response for (in seconds). A value of 0 is equivalent to setting the cache control header with the value "no-cache". A value of -1 is equivalent to setting the cache control header with the value of "no-store".
  const RulesetRuleActionParametersEdgeTtlStatusCodeTtl({
    this.statusCode,
    this.statusCodeRange,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statusCode': ?statusCode,
      'statusCodeRange': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersEdgeTtlStatusCodeTtlStatusCodeRange, Map<String, dynamic>>(statusCodeRange, (value) => value.toMap()),
      'value': value,
    };
  }

  factory RulesetRuleActionParametersEdgeTtlStatusCodeTtl.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersEdgeTtlStatusCodeTtl(
      statusCode: (() { final guardedValue = map['statusCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      statusCodeRange: (() { final guardedValue = map['statusCodeRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersEdgeTtlStatusCodeTtlStatusCodeRange.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      value: pulumi.Input.fromValue((map['value'] as num).toInt()),
    );
  }
}
