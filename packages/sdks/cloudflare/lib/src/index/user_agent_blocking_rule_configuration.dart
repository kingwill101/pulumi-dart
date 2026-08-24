// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserAgentBlockingRuleConfiguration {
  /// The configuration target. You must set the target to `ua` when specifying a user agent in the rule.
  /// Available values: "ua".
  final pulumi.Input<String?>? target;
  /// the user agent to exactly match
  final pulumi.Input<String?>? value;

  /// Creates a new [UserAgentBlockingRuleConfiguration].
  /// [target] The configuration target. You must set the target to `ua` when specifying a user agent in the rule.
  /// [value] the user agent to exactly match
  const UserAgentBlockingRuleConfiguration({
    this.target,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'target': ?target,
      'value': ?value,
    };
  }

  factory UserAgentBlockingRuleConfiguration.fromMap(Map<String, dynamic> map) {
    return UserAgentBlockingRuleConfiguration(
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
