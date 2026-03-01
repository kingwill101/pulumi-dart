// ignore_for_file: unused_element, unnecessary_cast


class GetBastionHostIpConfiguration {
  /// The name of the Bastion Host.
  final String name;
  /// Reference to a Public IP Address associated to this Bastion Host.
  final String publicIpAddressId;
  /// Reference to the subnet in which this Bastion Host has been created.
  final String subnetId;

  /// Creates a new [GetBastionHostIpConfiguration].
  /// [name] The name of the Bastion Host.
  /// [publicIpAddressId] Reference to a Public IP Address associated to this Bastion Host.
  /// [subnetId] Reference to the subnet in which this Bastion Host has been created.
  GetBastionHostIpConfiguration({
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

  factory GetBastionHostIpConfiguration.fromMap(Map<String, dynamic> map) {
    return GetBastionHostIpConfiguration(
      name: map['name'] as String,
      publicIpAddressId: map['publicIpAddressId'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}

