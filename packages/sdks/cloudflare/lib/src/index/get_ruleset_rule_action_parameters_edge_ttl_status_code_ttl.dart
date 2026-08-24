// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ruleset_rule_action_parameters_edge_ttl_status_code_ttl_status_code_range.dart';

class GetRulesetRuleActionParametersEdgeTtlStatusCodeTtl {
  /// A single status code to apply the TTL to.
  final pulumi.Input<int> statusCode;
  /// A range of status codes to apply the TTL to.
  final pulumi.Input<GetRulesetRuleActionParametersEdgeTtlStatusCodeTtlStatusCodeRange> statusCodeRange;
  /// The time to cache the response for (in seconds). A value of 0 is equivalent to setting the cache control header with the value "no-cache". A value of -1 is equivalent to setting the cache control header with the value of "no-store".
  final pulumi.Input<int> value;

  /// Creates a new [GetRulesetRuleActionParametersEdgeTtlStatusCodeTtl].
  /// [statusCode] A single status code to apply the TTL to.
  /// [statusCodeRange] A range of status codes to apply the TTL to.
  /// [value] The time to cache the response for (in seconds). A value of 0 is equivalent to setting the cache control header with the value "no-cache". A value of -1 is equivalent to setting the cache control header with the value of "no-store".
  const GetRulesetRuleActionParametersEdgeTtlStatusCodeTtl({
    required this.statusCode,
    required this.statusCodeRange,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statusCode': statusCode,
      'statusCodeRange': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersEdgeTtlStatusCodeTtlStatusCodeRange, Map<String, dynamic>>(statusCodeRange, (value) => value.toMap()),
      'value': value,
    };
  }

  factory GetRulesetRuleActionParametersEdgeTtlStatusCodeTtl.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersEdgeTtlStatusCodeTtl(
      statusCode: pulumi.Input.fromValue((map['statusCode'] as num).toInt()),
      statusCodeRange: pulumi.Input.fromValue(GetRulesetRuleActionParametersEdgeTtlStatusCodeTtlStatusCodeRange.fromMap((map['statusCodeRange']! as Map).cast<String, dynamic>())),
      value: pulumi.Input.fromValue((map['value'] as num).toInt()),
    );
  }
}
