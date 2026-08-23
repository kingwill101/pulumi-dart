// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVPNGateway.
class GetVPNGatewayResult {
  /// Description of this VPN gateway.
  final String description;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  /// The network of this VPN gateway.
  final String network;
  final String project;
  /// Region of this VPN gateway.
  final String region;
  /// The URI of the resource.
  final String selfLink;

  /// Creates a new [GetVPNGatewayResult].
  /// [description] Description of this VPN gateway.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [network] The network of this VPN gateway.
  /// [project] Required.
  /// [region] Region of this VPN gateway.
  /// [selfLink] The URI of the resource.
  const GetVPNGatewayResult({
    required this.description,
    required this.id,
    required this.name,
    required this.network,
    required this.project,
    required this.region,
    required this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'id': id,
      'name': name,
      'network': network,
      'project': project,
      'region': region,
      'selfLink': selfLink,
    };
  }

  factory GetVPNGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetVPNGatewayResult(
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      network: map['network'] as String,
      project: map['project'] as String,
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
    );
  }
}
