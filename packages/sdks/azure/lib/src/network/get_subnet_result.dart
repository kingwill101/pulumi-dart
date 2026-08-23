// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSubnet.
class GetSubnetResult {
  final String addressPrefix;
  /// The address prefixes for the subnet.
  final List<String> addressPrefixes;
  /// Is the default outbound access enabled for the subnet.
  final bool defaultOutboundAccessEnabled;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  /// The ID of the Network Security Group associated with the subnet.
  final String networkSecurityGroupId;
  /// Enable or Disable network policies for the private endpoint on the subnet.
  final String privateEndpointNetworkPolicies;
  /// Enable or Disable network policies for the private link service on the subnet.
  final bool privateLinkServiceNetworkPoliciesEnabled;
  final String resourceGroupName;
  /// The ID of the Route Table associated with this subnet.
  final String routeTableId;
  /// A list of Service Endpoints within this subnet.
  final List<String> serviceEndpoints;
  final String virtualNetworkName;

  /// Creates a new [GetSubnetResult].
  /// [addressPrefix] Required.
  /// [addressPrefixes] The address prefixes for the subnet.
  /// [defaultOutboundAccessEnabled] Is the default outbound access enabled for the subnet.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [networkSecurityGroupId] The ID of the Network Security Group associated with the subnet.
  /// [privateEndpointNetworkPolicies] Enable or Disable network policies for the private endpoint on the subnet.
  /// [privateLinkServiceNetworkPoliciesEnabled] Enable or Disable network policies for the private link service on the subnet.
  /// [resourceGroupName] Required.
  /// [routeTableId] The ID of the Route Table associated with this subnet.
  /// [serviceEndpoints] A list of Service Endpoints within this subnet.
  /// [virtualNetworkName] Required.
  const GetSubnetResult({
    required this.addressPrefix,
    required this.addressPrefixes,
    required this.defaultOutboundAccessEnabled,
    required this.id,
    required this.name,
    required this.networkSecurityGroupId,
    required this.privateEndpointNetworkPolicies,
    required this.privateLinkServiceNetworkPoliciesEnabled,
    required this.resourceGroupName,
    required this.routeTableId,
    required this.serviceEndpoints,
    required this.virtualNetworkName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': addressPrefix,
      'addressPrefixes': addressPrefixes,
      'defaultOutboundAccessEnabled': defaultOutboundAccessEnabled,
      'id': id,
      'name': name,
      'networkSecurityGroupId': networkSecurityGroupId,
      'privateEndpointNetworkPolicies': privateEndpointNetworkPolicies,
      'privateLinkServiceNetworkPoliciesEnabled': privateLinkServiceNetworkPoliciesEnabled,
      'resourceGroupName': resourceGroupName,
      'routeTableId': routeTableId,
      'serviceEndpoints': serviceEndpoints,
      'virtualNetworkName': virtualNetworkName,
    };
  }

  factory GetSubnetResult.fromMap(Map<String, dynamic> map) {
    return GetSubnetResult(
      addressPrefix: map['addressPrefix'] as String,
      addressPrefixes: (map['addressPrefixes'] as List).cast<String>(),
      defaultOutboundAccessEnabled: map['defaultOutboundAccessEnabled'] as bool,
      id: map['id'] as String,
      name: map['name'] as String,
      networkSecurityGroupId: map['networkSecurityGroupId'] as String,
      privateEndpointNetworkPolicies: map['privateEndpointNetworkPolicies'] as String,
      privateLinkServiceNetworkPoliciesEnabled: map['privateLinkServiceNetworkPoliciesEnabled'] as bool,
      resourceGroupName: map['resourceGroupName'] as String,
      routeTableId: map['routeTableId'] as String,
      serviceEndpoints: (map['serviceEndpoints'] as List).cast<String>(),
      virtualNetworkName: map['virtualNetworkName'] as String,
    );
  }
}
