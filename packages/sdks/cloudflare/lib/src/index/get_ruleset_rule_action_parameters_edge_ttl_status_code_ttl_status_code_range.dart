// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetRuleActionParametersEdgeTtlStatusCodeTtlStatusCodeRange {
  /// The lower bound of the range.
  final pulumi.Input<int> from;
  /// The upper bound of the range.
  final pulumi.Input<int> to;

  /// Creates a new [GetRulesetRuleActionParametersEdgeTtlStatusCodeTtlStatusCodeRange].
  /// [from] The lower bound of the range.
  /// [to] The upper bound of the range.
  const GetRulesetRuleActionParametersEdgeTtlStatusCodeTtlStatusCodeRange({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from,
      'to': to,
    };
  }

  factory GetRulesetRuleActionParametersEdgeTtlStatusCodeTtlStatusCodeRange.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParametersEdgeTtlStatusCodeTtlStatusCodeRange(
      from: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['from'])),
      to: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['to'])),
    );
  }
}
