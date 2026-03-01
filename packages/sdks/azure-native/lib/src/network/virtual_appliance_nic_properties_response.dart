// ignore_for_file: unused_element, unnecessary_cast


/// Network Virtual Appliance NIC properties.
class VirtualApplianceNicPropertiesResponse {
  /// Instance on which nic is attached.
  final String instanceName;
  /// NIC name.
  final String name;
  /// NIC type - PublicNic, PrivateNic, or AdditionalNic.
  final String nicType;
  /// Private IP address.
  final String privateIpAddress;
  /// Public IP address.
  final String publicIpAddress;

  /// Creates a new [VirtualApplianceNicPropertiesResponse].
  /// [instanceName] Instance on which nic is attached.
  /// [name] NIC name.
  /// [nicType] NIC type - PublicNic, PrivateNic, or AdditionalNic.
  /// [privateIpAddress] Private IP address.
  /// [publicIpAddress] Public IP address.
  VirtualApplianceNicPropertiesResponse({
    required this.instanceName,
    required this.name,
    required this.nicType,
    required this.privateIpAddress,
    required this.publicIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceName': instanceName,
      'name': name,
      'nicType': nicType,
      'privateIpAddress': privateIpAddress,
      'publicIpAddress': publicIpAddress,
    };
  }

  factory VirtualApplianceNicPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VirtualApplianceNicPropertiesResponse(
      instanceName: map['instanceName'] as String,
      name: map['name'] as String,
      nicType: map['nicType'] as String,
      privateIpAddress: map['privateIpAddress'] as String,
      publicIpAddress: map['publicIpAddress'] as String,
    );
  }
}

