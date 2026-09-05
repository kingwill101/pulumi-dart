// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getResolverOutboundEndpoint.
class GetResolverOutboundEndpointResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region where the Private DNS Resolver Outbound Endpoint exists.
  final String? location;
  final String? name;
  final String? privateDnsResolverId;
  /// The ID of the Subnet that is linked to the Private DNS Resolver Outbound Endpoint.
  final String? subnetId;
  /// The tags assigned to the Private DNS Resolver Outbound Endpoint.
  final Map<String, String>? tags;

  /// Creates a new [GetResolverOutboundEndpointResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Private DNS Resolver Outbound Endpoint exists.
  /// [name] Optional.
  /// [privateDnsResolverId] Optional.
  /// [subnetId] The ID of the Subnet that is linked to the Private DNS Resolver Outbound Endpoint.
  /// [tags] The tags assigned to the Private DNS Resolver Outbound Endpoint.
  const GetResolverOutboundEndpointResult({
    this.id,
    this.location,
    this.name,
    this.privateDnsResolverId,
    this.subnetId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'privateDnsResolverId': ?privateDnsResolverId,
      'subnetId': ?subnetId,
      'tags': ?tags,
    };
  }

  factory GetResolverOutboundEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetResolverOutboundEndpointResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateDnsResolverId: (() { final guardedValue = map['privateDnsResolverId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
