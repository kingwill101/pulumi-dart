// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNetworkManagerIpamPool.
class GetNetworkManagerIpamPoolResult {
  /// A list of IPv4 or IPv6 IP address prefixes assigned to the Network Manager IPAM Pool.
  final List<String> addressPrefixes;
  /// The description of the Network Manager IPAM Pool.
  final String description;
  /// The display name of the Network Manager IPAM Pool.
  final String displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure Region where the Network Manager IPAM Pool exists.
  final String location;
  final String name;
  final String networkManagerId;
  /// The name of the parent IPAM Pool.
  final String parentPoolName;
  /// A mapping of tags assigned to the Network Manager IPAM Pool.
  final Map<String, String> tags;

  /// Creates a new [GetNetworkManagerIpamPoolResult].
  /// [addressPrefixes] A list of IPv4 or IPv6 IP address prefixes assigned to the Network Manager IPAM Pool.
  /// [description] The description of the Network Manager IPAM Pool.
  /// [displayName] The display name of the Network Manager IPAM Pool.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Network Manager IPAM Pool exists.
  /// [name] Required.
  /// [networkManagerId] Required.
  /// [parentPoolName] The name of the parent IPAM Pool.
  /// [tags] A mapping of tags assigned to the Network Manager IPAM Pool.
  const GetNetworkManagerIpamPoolResult({
    required this.addressPrefixes,
    required this.description,
    required this.displayName,
    required this.id,
    required this.location,
    required this.name,
    required this.networkManagerId,
    required this.parentPoolName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': addressPrefixes,
      'description': description,
      'displayName': displayName,
      'id': id,
      'location': location,
      'name': name,
      'networkManagerId': networkManagerId,
      'parentPoolName': parentPoolName,
      'tags': tags,
    };
  }

  factory GetNetworkManagerIpamPoolResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkManagerIpamPoolResult(
      addressPrefixes: (map['addressPrefixes'] as List).cast<String>(),
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      networkManagerId: map['networkManagerId'] as String,
      parentPoolName: map['parentPoolName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

