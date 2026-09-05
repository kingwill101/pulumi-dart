// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSubnet.
class GetSubnetResult {
  final String? addressPrefix;
  /// The address prefixes for the subnet.
  final List<String>? addressPrefixes;
  /// Is the default outbound access enabled for the subnet.
  final bool? defaultOutboundAccessEnabled;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// The ID of the Network Security Group associated with the subnet.
  final String? networkSecurityGroupId;
  /// Enable or Disable network policies for the private endpoint on the subnet.
  final String? privateEndpointNetworkPolicies;
  /// Enable or Disable network policies for the private link service on the subnet.
  final bool? privateLinkServiceNetworkPoliciesEnabled;
  final String? resourceGroupName;
  /// The ID of the Route Table associated with this subnet.
  final String? routeTableId;
  /// A list of Service Endpoints within this subnet.
  final List<String>? serviceEndpoints;
  final String? virtualNetworkName;

  /// Creates a new [GetSubnetResult].
  /// [addressPrefix] Optional.
  /// [addressPrefixes] The address prefixes for the subnet.
  /// [defaultOutboundAccessEnabled] Is the default outbound access enabled for the subnet.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [networkSecurityGroupId] The ID of the Network Security Group associated with the subnet.
  /// [privateEndpointNetworkPolicies] Enable or Disable network policies for the private endpoint on the subnet.
  /// [privateLinkServiceNetworkPoliciesEnabled] Enable or Disable network policies for the private link service on the subnet.
  /// [resourceGroupName] Optional.
  /// [routeTableId] The ID of the Route Table associated with this subnet.
  /// [serviceEndpoints] A list of Service Endpoints within this subnet.
  /// [virtualNetworkName] Optional.
  const GetSubnetResult({
    this.addressPrefix,
    this.addressPrefixes,
    this.defaultOutboundAccessEnabled,
    this.id,
    this.name,
    this.networkSecurityGroupId,
    this.privateEndpointNetworkPolicies,
    this.privateLinkServiceNetworkPoliciesEnabled,
    this.resourceGroupName,
    this.routeTableId,
    this.serviceEndpoints,
    this.virtualNetworkName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
      'addressPrefixes': ?addressPrefixes,
      'defaultOutboundAccessEnabled': ?defaultOutboundAccessEnabled,
      'id': ?id,
      'name': ?name,
      'networkSecurityGroupId': ?networkSecurityGroupId,
      'privateEndpointNetworkPolicies': ?privateEndpointNetworkPolicies,
      'privateLinkServiceNetworkPoliciesEnabled': ?privateLinkServiceNetworkPoliciesEnabled,
      'resourceGroupName': ?resourceGroupName,
      'routeTableId': ?routeTableId,
      'serviceEndpoints': ?serviceEndpoints,
      'virtualNetworkName': ?virtualNetworkName,
    };
  }

  factory GetSubnetResult.fromMap(Map<String, dynamic> map) {
    return GetSubnetResult(
      addressPrefix: (() { final guardedValue = map['addressPrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      addressPrefixes: (() { final guardedValue = map['addressPrefixes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      defaultOutboundAccessEnabled: (() { final guardedValue = map['defaultOutboundAccessEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkSecurityGroupId: (() { final guardedValue = map['networkSecurityGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateEndpointNetworkPolicies: (() { final guardedValue = map['privateEndpointNetworkPolicies']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateLinkServiceNetworkPoliciesEnabled: (() { final guardedValue = map['privateLinkServiceNetworkPoliciesEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routeTableId: (() { final guardedValue = map['routeTableId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceEndpoints: (() { final guardedValue = map['serviceEndpoints']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      virtualNetworkName: (() { final guardedValue = map['virtualNetworkName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
