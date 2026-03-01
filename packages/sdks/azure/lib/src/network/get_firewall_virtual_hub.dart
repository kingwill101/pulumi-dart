// ignore_for_file: unused_element, unnecessary_cast


class GetFirewallVirtualHub {
  /// The private IP address associated with the Azure Firewall.
  final String privateIpAddress;
  /// The list of public IP addresses associated with the Azure Firewall.
  final List<String> publicIpAddresses;
  /// The number of public IPs assigned to the Azure Firewall.
  final int publicIpCount;
  /// The ID of the Virtual Hub where the Azure Firewall resides in.
  final String virtualHubId;

  /// Creates a new [GetFirewallVirtualHub].
  /// [privateIpAddress] The private IP address associated with the Azure Firewall.
  /// [publicIpAddresses] The list of public IP addresses associated with the Azure Firewall.
  /// [publicIpCount] The number of public IPs assigned to the Azure Firewall.
  /// [virtualHubId] The ID of the Virtual Hub where the Azure Firewall resides in.
  GetFirewallVirtualHub({
    required this.privateIpAddress,
    required this.publicIpAddresses,
    required this.publicIpCount,
    required this.virtualHubId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateIpAddress': privateIpAddress,
      'publicIpAddresses': publicIpAddresses,
      'publicIpCount': publicIpCount,
      'virtualHubId': virtualHubId,
    };
  }

  factory GetFirewallVirtualHub.fromMap(Map<String, dynamic> map) {
    return GetFirewallVirtualHub(
      privateIpAddress: map['privateIpAddress'] as String,
      publicIpAddresses: (map['publicIpAddresses'] as List).cast<String>(),
      publicIpCount: map['publicIpCount'] as int,
      virtualHubId: map['virtualHubId'] as String,
    );
  }
}

