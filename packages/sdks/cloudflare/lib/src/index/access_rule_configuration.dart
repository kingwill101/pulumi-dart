// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessRuleConfiguration {
  /// The configuration target. You must set the target to `ip` when specifying an IP address in the rule.
  /// Available values: "ip", "ip6", "ipRange", "asn", "country".
  final pulumi.Input<String?>? target;
  /// The IP address to match. This address will be compared to the IP address of incoming requests.
  final pulumi.Input<String?>? value;

  /// Creates a new [AccessRuleConfiguration].
  /// [target] The configuration target. You must set the target to `ip` when specifying an IP address in the rule.
  /// [value] The IP address to match. This address will be compared to the IP address of incoming requests.
  const AccessRuleConfiguration({
    this.target,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'target': ?target,
      'value': ?value,
    };
  }

  factory AccessRuleConfiguration.fromMap(Map<String, dynamic> map) {
    return AccessRuleConfiguration(
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
