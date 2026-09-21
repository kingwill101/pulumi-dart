// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulesetRuleActionParametersOriginRangeRequests {
  /// Whether to use range requests. `default` is the behaviour the zone gets without this rule.
  /// Available values: "on", "off", "default".
  final pulumi.Input<String> mode;

  /// Creates a new [RulesetRuleActionParametersOriginRangeRequests].
  /// [mode] Whether to use range requests. `default` is the behaviour the zone gets without this rule.
  const RulesetRuleActionParametersOriginRangeRequests({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory RulesetRuleActionParametersOriginRangeRequests.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParametersOriginRangeRequests(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
