// ignore_for_file: unused_element, unnecessary_cast


/// Properties of IPConfigurationBgpPeeringAddress.
class IPConfigurationBgpPeeringAddress {
  /// The list of custom BGP peering addresses which belong to IP configuration.
  final List<String>? customBgpIpAddresses;
  /// The ID of IP configuration which belongs to gateway.
  final String? ipconfigurationId;

  /// Creates a new [IPConfigurationBgpPeeringAddress].
  /// [customBgpIpAddresses] The list of custom BGP peering addresses which belong to IP configuration.
  /// [ipconfigurationId] The ID of IP configuration which belongs to gateway.
  IPConfigurationBgpPeeringAddress({
    this.customBgpIpAddresses,
    this.ipconfigurationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customBgpIpAddresses': ?customBgpIpAddresses,
      'ipconfigurationId': ?ipconfigurationId,
    };
  }

  factory IPConfigurationBgpPeeringAddress.fromMap(Map<String, dynamic> map) {
    return IPConfigurationBgpPeeringAddress(
      customBgpIpAddresses: map['customBgpIpAddresses'] == null ? null : (map['customBgpIpAddresses'] as List).cast<String>(),
      ipconfigurationId: map['ipconfigurationId'] == null ? null : map['ipconfigurationId'] as String,
    );
  }
}

