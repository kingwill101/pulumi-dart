// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a single IP configuration properties.
class VirtualApplianceIPConfigurationProperties {
  /// Whether or not this is primary IP configuration of the NIC.
  final pulumi.Input<bool>? primary;

  /// Creates a new [VirtualApplianceIPConfigurationProperties].
  /// [primary] Whether or not this is primary IP configuration of the NIC.
  VirtualApplianceIPConfigurationProperties({
    this.primary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primary': ?primary,
    };
  }

  factory VirtualApplianceIPConfigurationProperties.fromMap(Map<String, dynamic> map) {
    return VirtualApplianceIPConfigurationProperties(
      primary: map['primary'] == null ? null : (map['primary'] as bool).input(),
    );
  }
}

