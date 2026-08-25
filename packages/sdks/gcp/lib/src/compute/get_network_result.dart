// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNetwork.
class GetNetworkResult {
  /// Description of this network.
  final String? description;
  /// The IP address of the gateway.
  final String? gatewayIpv4;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The ula internal ipv6 range assigned to this network.
  final String? internalIpv6Range;
  final String? name;
  /// The numeric unique identifier for the resource.
  final int? networkId;
  /// A full or partial URL of the network profile to apply to this network.
  final String? networkProfile;
  /// (Deprecated) The numeric unique identifier for the resource. `numericId` is deprecated and will be removed in a future major release. Use `networkId` instead.
  final String? numericId;
  final String? project;
  /// The URI of the resource.
  final String? selfLink;
  /// the list of subnetworks which belong to the network
  final List<String>? subnetworksSelfLinks;

  /// Creates a new [GetNetworkResult].
  /// [description] Description of this network.
  /// [gatewayIpv4] The IP address of the gateway.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [internalIpv6Range] The ula internal ipv6 range assigned to this network.
  /// [name] Optional.
  /// [networkId] The numeric unique identifier for the resource.
  /// [networkProfile] A full or partial URL of the network profile to apply to this network.
  /// [numericId] (Deprecated) The numeric unique identifier for the resource. `numericId` is deprecated and will be removed in a future major release. Use `networkId` instead.
  /// [project] Optional.
  /// [selfLink] The URI of the resource.
  /// [subnetworksSelfLinks] the list of subnetworks which belong to the network
  const GetNetworkResult({
    this.description,
    this.gatewayIpv4,
    this.id,
    this.internalIpv6Range,
    this.name,
    this.networkId,
    this.networkProfile,
    this.numericId,
    this.project,
    this.selfLink,
    this.subnetworksSelfLinks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'gatewayIpv4': ?gatewayIpv4,
      'id': ?id,
      'internalIpv6Range': ?internalIpv6Range,
      'name': ?name,
      'networkId': ?networkId,
      'networkProfile': ?networkProfile,
      'numericId': ?numericId,
      'project': ?project,
      'selfLink': ?selfLink,
      'subnetworksSelfLinks': ?subnetworksSelfLinks,
    };
  }

  factory GetNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gatewayIpv4: (() { final guardedValue = map['gatewayIpv4']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      internalIpv6Range: (() { final guardedValue = map['internalIpv6Range']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkId: (() { final guardedValue = map['networkId']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      numericId: (() { final guardedValue = map['numericId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetworksSelfLinks: (() { final guardedValue = map['subnetworksSelfLinks']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
