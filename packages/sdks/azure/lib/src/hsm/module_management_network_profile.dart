// ignore_for_file: unused_element, unnecessary_cast


class ModuleManagementNetworkProfile {
  /// The private IPv4 address of the network interface. Changing this forces a new Dedicated Hardware Security Module to be created.
  final List<String> networkInterfacePrivateIpAddresses;
  /// The ID of the subnet. Changing this forces a new Dedicated Hardware Security Module to be created.
  final String subnetId;

  /// Creates a new [ModuleManagementNetworkProfile].
  /// [networkInterfacePrivateIpAddresses] The private IPv4 address of the network interface. Changing this forces a new Dedicated Hardware Security Module to be created.
  /// [subnetId] The ID of the subnet. Changing this forces a new Dedicated Hardware Security Module to be created.
  ModuleManagementNetworkProfile({
    required this.networkInterfacePrivateIpAddresses,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkInterfacePrivateIpAddresses': networkInterfacePrivateIpAddresses,
      'subnetId': subnetId,
    };
  }

  factory ModuleManagementNetworkProfile.fromMap(Map<String, dynamic> map) {
    return ModuleManagementNetworkProfile(
      networkInterfacePrivateIpAddresses: (map['networkInterfacePrivateIpAddresses'] as List).cast<String>(),
      subnetId: map['subnetId'] as String,
    );
  }
}

