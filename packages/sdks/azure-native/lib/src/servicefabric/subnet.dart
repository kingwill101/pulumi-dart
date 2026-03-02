// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes a Subnet.
class Subnet {
  /// Indicates wether to enable Ipv6 or not. If not provided, it will take the same configuration as the cluster.
  final pulumi.Input<bool>? enableIpv6;
  /// Subnet name.
  final pulumi.Input<String> name;
  /// Full resource id for the network security group.
  final pulumi.Input<String>? networkSecurityGroupId;
  /// Enable or Disable apply network policies on private end point in the subnet.
  final pulumi.Input<String>? privateEndpointNetworkPolicies;
  /// Enable or Disable apply network policies on private link service in the subnet.
  final pulumi.Input<String>? privateLinkServiceNetworkPolicies;

  /// Creates a new [Subnet].
  /// [enableIpv6] Indicates wether to enable Ipv6 or not. If not provided, it will take the same configuration as the cluster.
  /// [name] Subnet name.
  /// [networkSecurityGroupId] Full resource id for the network security group.
  /// [privateEndpointNetworkPolicies] Enable or Disable apply network policies on private end point in the subnet.
  /// [privateLinkServiceNetworkPolicies] Enable or Disable apply network policies on private link service in the subnet.
  Subnet({
    this.enableIpv6,
    required this.name,
    this.networkSecurityGroupId,
    this.privateEndpointNetworkPolicies,
    this.privateLinkServiceNetworkPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableIpv6': ?enableIpv6,
      'name': name,
      'networkSecurityGroupId': ?networkSecurityGroupId,
      'privateEndpointNetworkPolicies': ?privateEndpointNetworkPolicies,
      'privateLinkServiceNetworkPolicies': ?privateLinkServiceNetworkPolicies,
    };
  }

  factory Subnet.fromMap(Map<String, dynamic> map) {
    return Subnet(
      enableIpv6: map['enableIpv6'] == null ? null : (map['enableIpv6'] as bool).input(),
      name: (map['name'] as String).input(),
      networkSecurityGroupId: map['networkSecurityGroupId'] == null ? null : (map['networkSecurityGroupId'] as String).input(),
      privateEndpointNetworkPolicies: map['privateEndpointNetworkPolicies'] == null ? null : (map['privateEndpointNetworkPolicies'] as String).input(),
      privateLinkServiceNetworkPolicies: map['privateLinkServiceNetworkPolicies'] == null ? null : (map['privateLinkServiceNetworkPolicies'] as String).input(),
    );
  }
}

