// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNetworkManagerIpamPool.
class GetNetworkManagerIpamPoolResult {
  /// A list of IPv4 or IPv6 IP address prefixes assigned to the Network Manager IPAM Pool.
  final List<String>? addressPrefixes;
  /// The description of the Network Manager IPAM Pool.
  final String? description;
  /// The display name of the Network Manager IPAM Pool.
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region where the Network Manager IPAM Pool exists.
  final String? location;
  final String? name;
  final String? networkManagerId;
  /// The name of the parent IPAM Pool.
  final String? parentPoolName;
  /// A mapping of tags assigned to the Network Manager IPAM Pool.
  final Map<String, String>? tags;

  /// Creates a new [GetNetworkManagerIpamPoolResult].
  /// [addressPrefixes] A list of IPv4 or IPv6 IP address prefixes assigned to the Network Manager IPAM Pool.
  /// [description] The description of the Network Manager IPAM Pool.
  /// [displayName] The display name of the Network Manager IPAM Pool.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Network Manager IPAM Pool exists.
  /// [name] Optional.
  /// [networkManagerId] Optional.
  /// [parentPoolName] The name of the parent IPAM Pool.
  /// [tags] A mapping of tags assigned to the Network Manager IPAM Pool.
  const GetNetworkManagerIpamPoolResult({
    this.addressPrefixes,
    this.description,
    this.displayName,
    this.id,
    this.location,
    this.name,
    this.networkManagerId,
    this.parentPoolName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': ?addressPrefixes,
      'description': ?description,
      'displayName': ?displayName,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'networkManagerId': ?networkManagerId,
      'parentPoolName': ?parentPoolName,
      'tags': ?tags,
    };
  }

  factory GetNetworkManagerIpamPoolResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkManagerIpamPoolResult(
      addressPrefixes: (() { final guardedValue = map['addressPrefixes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkManagerId: (() { final guardedValue = map['networkManagerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parentPoolName: (() { final guardedValue = map['parentPoolName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
