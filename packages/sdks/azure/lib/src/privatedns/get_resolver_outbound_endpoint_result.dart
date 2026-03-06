// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getResolverOutboundEndpoint.
class GetResolverOutboundEndpointResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure Region where the Private DNS Resolver Outbound Endpoint exists.
  final String location;
  final String name;
  final String privateDnsResolverId;
  /// The ID of the Subnet that is linked to the Private DNS Resolver Outbound Endpoint.
  final String subnetId;
  /// The tags assigned to the Private DNS Resolver Outbound Endpoint.
  final Map<String, String> tags;

  /// Creates a new [GetResolverOutboundEndpointResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Private DNS Resolver Outbound Endpoint exists.
  /// [name] Required.
  /// [privateDnsResolverId] Required.
  /// [subnetId] The ID of the Subnet that is linked to the Private DNS Resolver Outbound Endpoint.
  /// [tags] The tags assigned to the Private DNS Resolver Outbound Endpoint.
  const GetResolverOutboundEndpointResult({
    required this.id,
    required this.location,
    required this.name,
    required this.privateDnsResolverId,
    required this.subnetId,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'name': name,
      'privateDnsResolverId': privateDnsResolverId,
      'subnetId': subnetId,
      'tags': tags,
    };
  }

  factory GetResolverOutboundEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetResolverOutboundEndpointResult(
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      privateDnsResolverId: map['privateDnsResolverId'] as String,
      subnetId: map['subnetId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

