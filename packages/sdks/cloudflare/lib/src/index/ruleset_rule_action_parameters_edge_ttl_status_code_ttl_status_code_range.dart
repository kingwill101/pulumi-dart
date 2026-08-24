// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulesetRuleActionParametersEdgeTtlStatusCodeTtlStatusCodeRange {
  /// The lower bound of the range.
  final pulumi.Input<int?>? from;
  /// The upper bound of the range.
  final pulumi.Input<int?>? to;

  /// Creates a new [RulesetRuleActionParametersEdgeTtlStatusCodeTtlStatusCodeRange].
  /// [from] The lower bound of the range.
  /// [to] The upper bound of the range.
  const RulesetRuleActionParametersEdgeTtlStatusCodeTtlStatusCodeRange({
    this.from,
    this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': ?from,
      'to': ?to,
    };
  }

  factory RulesetRuleActionParametersEdgeTtlStatusCodeTtlStatusCodeRange.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersEdgeTtlStatusCodeTtlStatusCodeRange(
      from: (() { final guardedValue = map['from']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      to: (() { final guardedValue = map['to']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
