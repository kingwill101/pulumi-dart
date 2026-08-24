// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccessRulesConfiguration {
  /// Defines the target to search in existing rules.
  /// Available values: "ip", "ipRange", "asn", "country".
  final pulumi.Input<String?>? target;
  /// Defines the target value to search for in existing rules: an IP address, an IP address range, or a country code, depending on the provided `configuration.target`.
  /// Notes: You can search for a single IPv4 address, an IP address range with a subnet of '/16' or '/24', or a two-letter ISO-3166-1 alpha-2 country code.
  final pulumi.Input<String?>? value;

  /// Creates a new [GetAccessRulesConfiguration].
  /// [target] Defines the target to search in existing rules.
  /// [value] Defines the target value to search for in existing rules: an IP address, an IP address range, or a country code, depending on the provided `configuration.target`.
  const GetAccessRulesConfiguration({
    this.target,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'target': ?target,
      'value': ?value,
    };
  }

  factory GetAccessRulesConfiguration.fromMap(Map<String, dynamic> map) {
    return GetAccessRulesConfiguration(
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
