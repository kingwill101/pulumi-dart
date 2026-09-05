// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getResolver.
class GetResolverResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region where the Private DNS Resolver exists.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// The tags assigned to the Private DNS Resolver.
  final Map<String, String>? tags;
  /// The ID of the Virtual Network that is linked to the Private DNS Resolver.
  final String? virtualNetworkId;

  /// Creates a new [GetResolverResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Private DNS Resolver exists.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [tags] The tags assigned to the Private DNS Resolver.
  /// [virtualNetworkId] The ID of the Virtual Network that is linked to the Private DNS Resolver.
  const GetResolverResult({
    this.id,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
    this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory GetResolverResult.fromMap(Map<String, dynamic> map) {
    return GetResolverResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      virtualNetworkId: (() { final guardedValue = map['virtualNetworkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
