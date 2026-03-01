// ignore_for_file: unused_element, unnecessary_cast


class BastionHostIpConfiguration {
  /// The name of the IP configuration. Changing this forces a new resource to be created.
  final String name;
  /// Reference to a Public IP Address to associate with this Bastion Host. Changing this forces a new resource to be created.
  final String publicIpAddressId;
  /// Reference to a subnet in which this Bastion Host has been created. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The Subnet used for the Bastion Host must have the name `AzureBastionSubnet` and the subnet mask must be at least a `/26`.
  final String subnetId;

  /// Creates a new [BastionHostIpConfiguration].
  /// [name] The name of the IP configuration. Changing this forces a new resource to be created.
  /// [publicIpAddressId] Reference to a Public IP Address to associate with this Bastion Host. Changing this forces a new resource to be created.
  /// [subnetId] Reference to a subnet in which this Bastion Host has been created. Changing this forces a new resource to be created.
  BastionHostIpConfiguration({
    required this.name,
    required this.publicIpAddressId,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'publicIpAddressId': publicIpAddressId,
      'subnetId': subnetId,
    };
  }

  factory BastionHostIpConfiguration.fromMap(Map<String, dynamic> map) {
    return BastionHostIpConfiguration(
      name: map['name'] as String,
      publicIpAddressId: map['publicIpAddressId'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}

