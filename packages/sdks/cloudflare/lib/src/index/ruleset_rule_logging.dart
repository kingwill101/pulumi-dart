// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RulesetRuleLogging {
  /// Whether to generate a log when the rule matches.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [RulesetRuleLogging].
  /// [enabled] Whether to generate a log when the rule matches.
  const RulesetRuleLogging({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory RulesetRuleLogging.fromMap(Map<String, dynamic> map) {
    return RulesetRuleLogging(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
