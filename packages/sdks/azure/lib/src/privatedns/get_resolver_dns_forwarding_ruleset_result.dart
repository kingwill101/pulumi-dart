// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getResolverDnsForwardingRuleset.
class GetResolverDnsForwardingRulesetResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure Region where the Private DNS Resolver Dns Forwarding Ruleset exists.
  final String location;
  final String name;
  /// The IDs list of the Private DNS Resolver Outbound Endpoints that are linked to the Private DNS Resolver Dns Forwarding Ruleset.
  final List<String> privateDnsResolverOutboundEndpointIds;
  final String resourceGroupName;
  /// The tags assigned to the Private DNS Resolver Dns Forwarding Ruleset.
  final Map<String, String> tags;

  /// Creates a new [GetResolverDnsForwardingRulesetResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Private DNS Resolver Dns Forwarding Ruleset exists.
  /// [name] Required.
  /// [privateDnsResolverOutboundEndpointIds] The IDs list of the Private DNS Resolver Outbound Endpoints that are linked to the Private DNS Resolver Dns Forwarding Ruleset.
  /// [resourceGroupName] Required.
  /// [tags] The tags assigned to the Private DNS Resolver Dns Forwarding Ruleset.
  GetResolverDnsForwardingRulesetResult({
    required this.id,
    required this.location,
    required this.name,
    required this.privateDnsResolverOutboundEndpointIds,
    required this.resourceGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'name': name,
      'privateDnsResolverOutboundEndpointIds': privateDnsResolverOutboundEndpointIds,
      'resourceGroupName': resourceGroupName,
      'tags': tags,
    };
  }

  factory GetResolverDnsForwardingRulesetResult.fromMap(Map<String, dynamic> map) {
    return GetResolverDnsForwardingRulesetResult(
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      privateDnsResolverOutboundEndpointIds: (map['privateDnsResolverOutboundEndpointIds'] as List).cast<String>(),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

