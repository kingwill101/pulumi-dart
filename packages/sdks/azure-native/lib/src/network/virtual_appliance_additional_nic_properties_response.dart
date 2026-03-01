// ignore_for_file: unused_element, unnecessary_cast


/// Network Virtual Appliance Additional NIC properties.
class VirtualApplianceAdditionalNicPropertiesResponse {
  /// Flag (true or false) for Intent for Public Ip on additional nic
  final bool? hasPublicIp;
  /// Name of additional nic
  final String? name;

  /// Creates a new [VirtualApplianceAdditionalNicPropertiesResponse].
  /// [hasPublicIp] Flag (true or false) for Intent for Public Ip on additional nic
  /// [name] Name of additional nic
  VirtualApplianceAdditionalNicPropertiesResponse({
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
      hasPublicIp: map['hasPublicIp'] == null ? null : map['hasPublicIp'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

