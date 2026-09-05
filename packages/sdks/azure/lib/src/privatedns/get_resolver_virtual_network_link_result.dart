// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getResolverVirtualNetworkLink.
class GetResolverVirtualNetworkLinkResult {
  final String? dnsForwardingRulesetId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The metadata attached to the Private DNS Resolver Virtual Network Link.
  final Map<String, String>? metadata;
  final String? name;
  /// The ID of the Virtual Network that is linked to the Private DNS Resolver Virtual Network Link.
  final String? virtualNetworkId;

  /// Creates a new [GetResolverVirtualNetworkLinkResult].
  /// [dnsForwardingRulesetId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [metadata] The metadata attached to the Private DNS Resolver Virtual Network Link.
  /// [name] Optional.
  /// [virtualNetworkId] The ID of the Virtual Network that is linked to the Private DNS Resolver Virtual Network Link.
  const GetResolverVirtualNetworkLinkResult({
    this.dnsForwardingRulesetId,
    this.id,
    this.metadata,
    this.name,
    this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsForwardingRulesetId': ?dnsForwardingRulesetId,
      'id': ?id,
      'metadata': ?metadata,
      'name': ?name,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory GetResolverVirtualNetworkLinkResult.fromMap(Map<String, dynamic> map) {
    return GetResolverVirtualNetworkLinkResult(
      dnsForwardingRulesetId: (() { final guardedValue = map['dnsForwardingRulesetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualNetworkId: (() { final guardedValue = map['virtualNetworkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
