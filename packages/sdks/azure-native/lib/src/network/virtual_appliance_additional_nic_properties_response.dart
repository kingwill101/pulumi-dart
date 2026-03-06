// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network Virtual Appliance Additional NIC properties.
class VirtualApplianceAdditionalNicPropertiesResponse {
  /// Flag (true or false) for Intent for Public Ip on additional nic
  final pulumi.Input<bool>? hasPublicIp;
  /// Name of additional nic
  final pulumi.Input<String>? name;

  /// Creates a new [VirtualApplianceAdditionalNicPropertiesResponse].
  /// [hasPublicIp] Flag (true or false) for Intent for Public Ip on additional nic
  /// [name] Name of additional nic
  const VirtualApplianceAdditionalNicPropertiesResponse({
    this.hasPublicIp,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hasPublicIp': ?hasPublicIp,
      'name': ?name,
    };
  }

  factory VirtualApplianceAdditionalNicPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VirtualApplianceAdditionalNicPropertiesResponse(
      hasPublicIp: (() { final guardedValue = map['hasPublicIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

