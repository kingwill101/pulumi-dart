// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFirewallVirtualHub {
  /// The private IP address associated with the Azure Firewall.
  final pulumi.Input<String> privateIpAddress;

  /// The list of public IP addresses associated with the Azure Firewall.
  final pulumi.Input<List<String>> publicIpAddresses;

  /// The number of public IPs assigned to the Azure Firewall.
  final pulumi.Input<int> publicIpCount;

  /// The ID of the Virtual Hub where the Azure Firewall resides in.
  final pulumi.Input<String> virtualHubId;

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
      privateIpAddress: pulumi.Input.fromValue(
        map['privateIpAddress'] as String,
      ),
      publicIpAddresses: pulumi.Input.fromValue(
        (map['publicIpAddresses'] as List).cast<String>(),
      ),
      publicIpCount: pulumi.Input.fromValue(map['publicIpCount'] as int),
      virtualHubId: pulumi.Input.fromValue(map['virtualHubId'] as String),
    );
  }
}
