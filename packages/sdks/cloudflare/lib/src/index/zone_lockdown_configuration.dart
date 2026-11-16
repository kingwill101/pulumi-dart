// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZoneLockdownConfiguration {
  /// For `target: ip`: The configuration target. You must set the target to `ip` when specifying an IP address in the Zone Lockdown rule.
  final pulumi.Input<String?>? target;
  /// For `target: ip`: The IP address to match. This address will be compared to the IP address of incoming requests.
  ///
  /// For `target: ipRange`: The IP address range to match. You can only use prefix lengths `/16` and `/24`.
  final pulumi.Input<String?>? value;

  /// Creates a new [ZoneLockdownConfiguration].
  /// [target] For `target: ip`: The configuration target. You must set the target to `ip` when specifying an IP address in the Zone Lockdown rule.
  /// [value] For `target: ip`: The IP address to match. This address will be compared to the IP address of incoming requests.
  const ZoneLockdownConfiguration({
    this.target,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'target': ?target,
      'value': ?value,
    };
  }

  factory ZoneLockdownConfiguration.fromMap(Map<String, dynamic> map) {
    return ZoneLockdownConfiguration(
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
