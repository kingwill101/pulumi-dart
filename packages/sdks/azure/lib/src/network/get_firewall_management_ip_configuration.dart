// ignore_for_file: unused_element, unnecessary_cast


class GetFirewallManagementIpConfiguration {
  /// The name of the Azure Firewall.
  final String name;
  /// The private IP address associated with the Azure Firewall.
  final String privateIpAddress;
  /// The ID of the Public IP address of the Azure Firewall.
  final String publicIpAddressId;
  /// The ID of the Subnet where the Azure Firewall is deployed.
  final String subnetId;

  /// Creates a new [GetFirewallManagementIpConfiguration].
  /// [name] The name of the Azure Firewall.
  /// [privateIpAddress] The private IP address associated with the Azure Firewall.
  /// [publicIpAddressId] The ID of the Public IP address of the Azure Firewall.
  /// [subnetId] The ID of the Subnet where the Azure Firewall is deployed.
  GetFirewallManagementIpConfiguration({
    required this.name,
    required this.privateIpAddress,
    required this.publicIpAddressId,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'privateIpAddress': privateIpAddress,
      'publicIpAddressId': publicIpAddressId,
      'subnetId': subnetId,
    };
  }

  factory GetFirewallManagementIpConfiguration.fromMap(Map<String, dynamic> map) {
    return GetFirewallManagementIpConfiguration(
      name: map['name'] as String,
      privateIpAddress: map['privateIpAddress'] as String,
      publicIpAddressId: map['publicIpAddressId'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}

