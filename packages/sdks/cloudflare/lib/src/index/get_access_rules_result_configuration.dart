// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccessRulesResultConfiguration {
  /// For `target: ip`: The configuration target. You must set the target to `ip` when specifying an IP address in the rule.
  final pulumi.Input<String> target;
  /// Defines the target value to search for in existing rules: an IP address, an IP address range, or a country code, depending on the provided `configuration.target`.
  /// Notes: You can search for a single IPv4 address, an IP address range with a subnet of '/16' or '/24', or a two-letter ISO-3166-1 alpha-2 country code.
  final pulumi.Input<String> value;

  /// Creates a new [GetAccessRulesResultConfiguration].
  /// [target] For `target: ip`: The configuration target. You must set the target to `ip` when specifying an IP address in the rule.
  /// [value] Defines the target value to search for in existing rules: an IP address, an IP address range, or a country code, depending on the provided `configuration.target`.
  const GetAccessRulesResultConfiguration({
    required this.target,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'target': target,
      'value': value,
    };
  }

  factory GetAccessRulesResultConfiguration.fromMap(Map<String, dynamic> map) {
    return GetAccessRulesResultConfiguration(
      target: pulumi.Input.fromValue(map['target'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
