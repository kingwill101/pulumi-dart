// ignore_for_file: unused_element, unnecessary_cast


class ModuleNetworkProfile {
  /// The private IPv4 address of the network interface. Changing this forces a new Dedicated Hardware Security Module to be created.
  final List<String> networkInterfacePrivateIpAddresses;
  /// The ID of the subnet. Changing this forces a new Dedicated Hardware Security Module to be created.
  final String subnetId;

  /// Creates a new [ModuleNetworkProfile].
  /// [networkInterfacePrivateIpAddresses] The private IPv4 address of the network interface. Changing this forces a new Dedicated Hardware Security Module to be created.
  /// [subnetId] The ID of the subnet. Changing this forces a new Dedicated Hardware Security Module to be created.
  ModuleNetworkProfile({
    required this.networkInterfacePrivateIpAddresses,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkInterfacePrivateIpAddresses': networkInterfacePrivateIpAddresses,
      'subnetId': subnetId,
    };
  }

  factory ModuleNetworkProfile.fromMap(Map<String, dynamic> map) {
    return ModuleNetworkProfile(
      networkInterfacePrivateIpAddresses: (map['networkInterfacePrivateIpAddresses'] as List).cast<String>(),
      subnetId: map['subnetId'] as String,
    );
  }
}

