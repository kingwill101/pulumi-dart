// ignore_for_file: unused_element, unnecessary_cast


class FirewallVirtualHub {
  /// The private IP address associated with the Firewall.
  final String? privateIpAddress;
  /// The list of public IP addresses associated with the Firewall.
  final List<String>? publicIpAddresses;
  /// Specifies the number of public IPs to assign to the Firewall. Defaults to `1`.
  final int? publicIpCount;
  /// Specifies the ID of the Virtual Hub where the Firewall resides in.
  final String virtualHubId;

  /// Creates a new [FirewallVirtualHub].
  /// [privateIpAddress] The private IP address associated with the Firewall.
  /// [publicIpAddresses] The list of public IP addresses associated with the Firewall.
  /// [publicIpCount] Specifies the number of public IPs to assign to the Firewall. Defaults to `1`.
  /// [virtualHubId] Specifies the ID of the Virtual Hub where the Firewall resides in.
  FirewallVirtualHub({
    this.privateIpAddress,
    this.publicIpAddresses,
    this.publicIpCount,
    required this.virtualHubId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateIpAddress': ?privateIpAddress,
      'publicIpAddresses': ?publicIpAddresses,
      'publicIpCount': ?publicIpCount,
      'virtualHubId': virtualHubId,
    };
  }

  factory FirewallVirtualHub.fromMap(Map<String, dynamic> map) {
    return FirewallVirtualHub(
      privateIpAddress: map['privateIpAddress'] == null ? null : map['privateIpAddress'] as String,
      publicIpAddresses: map['publicIpAddresses'] == null ? null : (map['publicIpAddresses'] as List).cast<String>(),
      publicIpCount: map['publicIpCount'] == null ? null : map['publicIpCount'] as int,
      virtualHubId: map['virtualHubId'] as String,
    );
  }
}

