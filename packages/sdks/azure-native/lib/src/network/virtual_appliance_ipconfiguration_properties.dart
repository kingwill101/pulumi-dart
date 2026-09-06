// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a single IP configuration properties.
class VirtualApplianceIPConfigurationProperties {
  /// Whether or not this is primary IP configuration of the NIC.
  final pulumi.Input<bool?>? primary;

  /// Creates a new [VirtualApplianceIPConfigurationProperties].
  /// [primary] Whether or not this is primary IP configuration of the NIC.
  const VirtualApplianceIPConfigurationProperties({
    this.primary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primary': ?primary,
    };
  }

  factory VirtualApplianceIPConfigurationProperties.fromMap(Map<String, dynamic> map) {
    return VirtualApplianceIPConfigurationProperties(
      primary: (() { final guardedValue = map['primary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
