// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZoneLockdownsResultConfiguration {
  /// The configuration target. You must set the target to `ip` when specifying an IP address in the Zone Lockdown rule.
  /// Available values: "ip", "ipRange".
  final pulumi.Input<String> target;
  /// The IP address to match. This address will be compared to the IP address of incoming requests.
  final pulumi.Input<String> value;

  /// Creates a new [GetZoneLockdownsResultConfiguration].
  /// [target] The configuration target. You must set the target to `ip` when specifying an IP address in the Zone Lockdown rule.
  /// [value] The IP address to match. This address will be compared to the IP address of incoming requests.
  const GetZoneLockdownsResultConfiguration({
    required this.target,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'target': target,
      'value': value,
    };
  }

  factory GetZoneLockdownsResultConfiguration.fromMap(Map<String, dynamic> map) {
    return GetZoneLockdownsResultConfiguration(
      target: pulumi.Input.fromValue(map['target'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
