// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a single IP configuration properties.
class VirtualApplianceIPConfigurationPropertiesResponse {
  /// Whether or not this is primary IP configuration of the NIC.
  final pulumi.Input<bool>? primary;

  /// Creates a new [VirtualApplianceIPConfigurationPropertiesResponse].
  /// [primary] Whether or not this is primary IP configuration of the NIC.
  const VirtualApplianceIPConfigurationPropertiesResponse({
    this.primary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primary': ?primary,
    };
  }

  factory VirtualApplianceIPConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VirtualApplianceIPConfigurationPropertiesResponse(
      primary: (() { final guardedValue = map['primary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

