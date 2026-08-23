// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getResolver.
class GetResolverResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure Region where the Private DNS Resolver exists.
  final String location;
  final String name;
  final String resourceGroupName;
  /// The tags assigned to the Private DNS Resolver.
  final Map<String, String> tags;
  /// The ID of the Virtual Network that is linked to the Private DNS Resolver.
  final String virtualNetworkId;

  /// Creates a new [GetResolverResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Private DNS Resolver exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [tags] The tags assigned to the Private DNS Resolver.
  /// [virtualNetworkId] The ID of the Virtual Network that is linked to the Private DNS Resolver.
  const GetResolverResult({
    required this.id,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.tags,
    required this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
      'virtualNetworkId': virtualNetworkId,
    };
  }

  factory GetResolverResult.fromMap(Map<String, dynamic> map) {
    return GetResolverResult(
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      virtualNetworkId: map['virtualNetworkId'] as String,
    );
  }
}
