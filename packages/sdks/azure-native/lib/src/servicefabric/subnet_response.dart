// ignore_for_file: unused_element, unnecessary_cast


/// Describes a Subnet.
class SubnetResponse {
  /// Indicates wether to enable Ipv6 or not. If not provided, it will take the same configuration as the cluster.
  final bool? enableIpv6;
  /// Subnet name.
  final String name;
  /// Full resource id for the network security group.
  final String? networkSecurityGroupId;
  /// Enable or Disable apply network policies on private end point in the subnet.
  final String? privateEndpointNetworkPolicies;
  /// Enable or Disable apply network policies on private link service in the subnet.
  final String? privateLinkServiceNetworkPolicies;

  /// Creates a new [SubnetResponse].
  /// [enableIpv6] Indicates wether to enable Ipv6 or not. If not provided, it will take the same configuration as the cluster.
  /// [name] Subnet name.
  /// [networkSecurityGroupId] Full resource id for the network security group.
  /// [privateEndpointNetworkPolicies] Enable or Disable apply network policies on private end point in the subnet.
  /// [privateLinkServiceNetworkPolicies] Enable or Disable apply network policies on private link service in the subnet.
  SubnetResponse({
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

  factory SubnetResponse.fromMap(Map<String, dynamic> map) {
    return SubnetResponse(
      enableIpv6: map['enableIpv6'] == null ? null : map['enableIpv6'] as bool,
      name: map['name'] as String,
      networkSecurityGroupId: map['networkSecurityGroupId'] == null ? null : map['networkSecurityGroupId'] as String,
      privateEndpointNetworkPolicies: map['privateEndpointNetworkPolicies'] == null ? null : map['privateEndpointNetworkPolicies'] as String,
      privateLinkServiceNetworkPolicies: map['privateLinkServiceNetworkPolicies'] == null ? null : map['privateLinkServiceNetworkPolicies'] as String,
    );
  }
}

