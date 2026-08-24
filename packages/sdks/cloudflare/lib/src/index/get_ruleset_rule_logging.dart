// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesetRuleLogging {
  /// Whether to generate a log when the rule matches.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetRulesetRuleLogging].
  /// [enabled] Whether to generate a log when the rule matches.
  const GetRulesetRuleLogging({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetRulesetRuleLogging.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleLogging(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
