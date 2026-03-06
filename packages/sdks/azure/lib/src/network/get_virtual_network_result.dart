// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVirtualNetwork.
class GetVirtualNetworkResult {
  /// The list of address spaces used by the virtual network.
  final List<String> addressSpaces;
  /// The list of DNS servers used by the virtual network.
  final List<String> dnsServers;
  /// The GUID of the virtual network.
  final String guid;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Location of the virtual network.
  final String location;
  final String name;
  final String resourceGroupName;
  /// The list of name of the subnets that are attached to this virtual network.
  final List<String> subnets;
  /// A mapping of tags to assigned to the resource.
  final Map<String, String> tags;
  /// A mapping of name - virtual network id of the virtual network peerings.
  final Map<String, String> vnetPeerings;
  /// A list of virtual network peerings IP addresses.
  final List<String> vnetPeeringsAddresses;

  /// Creates a new [GetVirtualNetworkResult].
  /// [addressSpaces] The list of address spaces used by the virtual network.
  /// [dnsServers] The list of DNS servers used by the virtual network.
  /// [guid] The GUID of the virtual network.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Location of the virtual network.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [subnets] The list of name of the subnets that are attached to this virtual network.
  /// [tags] A mapping of tags to assigned to the resource.
  /// [vnetPeerings] A mapping of name - virtual network id of the virtual network peerings.
  /// [vnetPeeringsAddresses] A list of virtual network peerings IP addresses.
  const GetVirtualNetworkResult({
    required this.addressSpaces,
    required this.dnsServers,
    required this.guid,
    required this.id,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.subnets,
    required this.tags,
    required this.vnetPeerings,
    required this.vnetPeeringsAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressSpaces': addressSpaces,
      'dnsServers': dnsServers,
      'guid': guid,
      'id': id,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'subnets': subnets,
      'tags': tags,
      'vnetPeerings': vnetPeerings,
      'vnetPeeringsAddresses': vnetPeeringsAddresses,
    };
  }

  factory GetVirtualNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkResult(
      addressSpaces: (map['addressSpaces'] as List).cast<String>(),
      dnsServers: (map['dnsServers'] as List).cast<String>(),
      guid: map['guid'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      subnets: (map['subnets'] as List).cast<String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
      vnetPeerings: (map['vnetPeerings'] as Map).cast<String, String>(),
      vnetPeeringsAddresses: (map['vnetPeeringsAddresses'] as List).cast<String>(),
    );
  }
}

