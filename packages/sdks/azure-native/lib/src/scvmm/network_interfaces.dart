// ignore_for_file: unused_element, unnecessary_cast


/// Network Interface model
class NetworkInterfaces {
  /// Gets or sets the ipv4 address type.
  final String? ipv4AddressType;
  /// Gets or sets the ipv6 address type.
  final String? ipv6AddressType;
  /// Gets or sets the nic MAC address.
  final String? macAddress;
  /// Gets or sets the mac address type.
  final String? macAddressType;
  /// Gets or sets the name of the network interface.
  final String? name;
  /// Gets or sets the nic id.
  final String? nicId;
  /// Gets or sets the ARM Id of the Microsoft.ScVmm/virtualNetwork resource to connect the nic.
  final String? virtualNetworkId;

  /// Creates a new [NetworkInterfaces].
  /// [ipv4AddressType] Gets or sets the ipv4 address type.
  /// [ipv6AddressType] Gets or sets the ipv6 address type.
  /// [macAddress] Gets or sets the nic MAC address.
  /// [macAddressType] Gets or sets the mac address type.
  /// [name] Gets or sets the name of the network interface.
  /// [nicId] Gets or sets the nic id.
  /// [virtualNetworkId] Gets or sets the ARM Id of the Microsoft.ScVmm/virtualNetwork resource to connect the nic.
  NetworkInterfaces({
    this.ipv4AddressType,
    this.ipv6AddressType,
    this.macAddress,
    this.macAddressType,
    this.name,
    this.nicId,
    this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4AddressType': ?ipv4AddressType,
      'ipv6AddressType': ?ipv6AddressType,
      'macAddress': ?macAddress,
      'macAddressType': ?macAddressType,
      'name': ?name,
      'nicId': ?nicId,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory NetworkInterfaces.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaces(
      ipv4AddressType: map['ipv4AddressType'] == null ? null : map['ipv4AddressType'] as String,
      ipv6AddressType: map['ipv6AddressType'] == null ? null : map['ipv6AddressType'] as String,
      macAddress: map['macAddress'] == null ? null : map['macAddress'] as String,
      macAddressType: map['macAddressType'] == null ? null : map['macAddressType'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      nicId: map['nicId'] == null ? null : map['nicId'] as String,
      virtualNetworkId: map['virtualNetworkId'] == null ? null : map['virtualNetworkId'] as String,
    );
  }
}

