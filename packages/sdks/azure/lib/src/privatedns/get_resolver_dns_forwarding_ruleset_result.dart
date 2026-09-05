// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getResolverDnsForwardingRuleset.
class GetResolverDnsForwardingRulesetResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region where the Private DNS Resolver Dns Forwarding Ruleset exists.
  final String? location;
  final String? name;
  /// The IDs list of the Private DNS Resolver Outbound Endpoints that are linked to the Private DNS Resolver Dns Forwarding Ruleset.
  final List<String>? privateDnsResolverOutboundEndpointIds;
  final String? resourceGroupName;
  /// The tags assigned to the Private DNS Resolver Dns Forwarding Ruleset.
  final Map<String, String>? tags;

  /// Creates a new [GetResolverDnsForwardingRulesetResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Private DNS Resolver Dns Forwarding Ruleset exists.
  /// [name] Optional.
  /// [privateDnsResolverOutboundEndpointIds] The IDs list of the Private DNS Resolver Outbound Endpoints that are linked to the Private DNS Resolver Dns Forwarding Ruleset.
  /// [resourceGroupName] Optional.
  /// [tags] The tags assigned to the Private DNS Resolver Dns Forwarding Ruleset.
  const GetResolverDnsForwardingRulesetResult({
    this.id,
    this.location,
    this.name,
    this.privateDnsResolverOutboundEndpointIds,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'privateDnsResolverOutboundEndpointIds': ?privateDnsResolverOutboundEndpointIds,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetResolverDnsForwardingRulesetResult.fromMap(Map<String, dynamic> map) {
    return GetResolverDnsForwardingRulesetResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateDnsResolverOutboundEndpointIds: (() { final guardedValue = map['privateDnsResolverOutboundEndpointIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
