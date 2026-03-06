// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNetwork.
class GetNetworkResult {
  /// Description of this network.
  final String description;
  /// The IP address of the gateway.
  final String gatewayIpv4;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The ula internal ipv6 range assigned to this network.
  final String internalIpv6Range;
  final String name;
  /// The numeric unique identifier for the resource.
  final int networkId;
  /// A full or partial URL of the network profile to apply to this network.
  final String? networkProfile;
  /// (Deprecated) The numeric unique identifier for the resource. `numeric_id` is deprecated and will be removed in a future major release. Use `network_id` instead.
  final String numericId;
  final String? project;
  /// The URI of the resource.
  final String selfLink;
  /// the list of subnetworks which belong to the network
  final List<String> subnetworksSelfLinks;

  /// Creates a new [GetNetworkResult].
  /// [description] Description of this network.
  /// [gatewayIpv4] The IP address of the gateway.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [internalIpv6Range] The ula internal ipv6 range assigned to this network.
  /// [name] Required.
  /// [networkId] The numeric unique identifier for the resource.
  /// [networkProfile] A full or partial URL of the network profile to apply to this network.
  /// [numericId] (Deprecated) The numeric unique identifier for the resource. `numeric_id` is deprecated and will be removed in a future major release. Use `network_id` instead.
  /// [project] Optional.
  /// [selfLink] The URI of the resource.
  /// [subnetworksSelfLinks] the list of subnetworks which belong to the network
  const GetNetworkResult({
    required this.description,
    required this.gatewayIpv4,
    required this.id,
    required this.internalIpv6Range,
    required this.name,
    required this.networkId,
    this.networkProfile,
    required this.numericId,
    this.project,
    required this.selfLink,
    required this.subnetworksSelfLinks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'gatewayIpv4': gatewayIpv4,
      'id': id,
      'internalIpv6Range': internalIpv6Range,
      'name': name,
      'networkId': networkId,
      'networkProfile': ?networkProfile,
      'numericId': numericId,
      'project': ?project,
      'selfLink': selfLink,
      'subnetworksSelfLinks': subnetworksSelfLinks,
    };
  }

  factory GetNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkResult(
      description: map['description'] as String,
      gatewayIpv4: map['gatewayIpv4'] as String,
      id: map['id'] as String,
      internalIpv6Range: map['internalIpv6Range'] as String,
      name: map['name'] as String,
      networkId: map['networkId'] as int,
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      numericId: map['numericId'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: map['selfLink'] as String,
      subnetworksSelfLinks: (map['subnetworksSelfLinks'] as List).cast<String>(),
    );
  }
}

