// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVirtualNetwork.
class GetVirtualNetworkResult {
  /// The list of address spaces used by the virtual network.
  final List<String>? addressSpaces;
  /// The list of DNS servers used by the virtual network.
  final List<String>? dnsServers;
  /// The GUID of the virtual network.
  final String? guid;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Location of the virtual network.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// The list of name of the subnets that are attached to this virtual network.
  final List<String>? subnets;
  /// A mapping of tags to assigned to the resource.
  final Map<String, String>? tags;
  /// A mapping of name - virtual network id of the virtual network peerings.
  final Map<String, String>? vnetPeerings;
  /// A list of virtual network peerings IP addresses.
  final List<String>? vnetPeeringsAddresses;

  /// Creates a new [GetVirtualNetworkResult].
  /// [addressSpaces] The list of address spaces used by the virtual network.
  /// [dnsServers] The list of DNS servers used by the virtual network.
  /// [guid] The GUID of the virtual network.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Location of the virtual network.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [subnets] The list of name of the subnets that are attached to this virtual network.
  /// [tags] A mapping of tags to assigned to the resource.
  /// [vnetPeerings] A mapping of name - virtual network id of the virtual network peerings.
  /// [vnetPeeringsAddresses] A list of virtual network peerings IP addresses.
  const GetVirtualNetworkResult({
    this.addressSpaces,
    this.dnsServers,
    this.guid,
    this.id,
    this.location,
    this.name,
    this.resourceGroupName,
    this.subnets,
    this.tags,
    this.vnetPeerings,
    this.vnetPeeringsAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressSpaces': ?addressSpaces,
      'dnsServers': ?dnsServers,
      'guid': ?guid,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'subnets': ?subnets,
      'tags': ?tags,
      'vnetPeerings': ?vnetPeerings,
      'vnetPeeringsAddresses': ?vnetPeeringsAddresses,
    };
  }

  factory GetVirtualNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkResult(
      addressSpaces: (() { final guardedValue = map['addressSpaces']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      guid: (() { final guardedValue = map['guid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnets: (() { final guardedValue = map['subnets']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      vnetPeerings: (() { final guardedValue = map['vnetPeerings']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      vnetPeeringsAddresses: (() { final guardedValue = map['vnetPeeringsAddresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
