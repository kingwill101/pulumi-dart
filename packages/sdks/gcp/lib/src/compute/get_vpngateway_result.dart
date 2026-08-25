// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVPNGateway.
class GetVPNGatewayResult {
  /// Description of this VPN gateway.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// The network of this VPN gateway.
  final String? network;
  final String? project;
  /// Region of this VPN gateway.
  final String? region;
  /// The URI of the resource.
  final String? selfLink;

  /// Creates a new [GetVPNGatewayResult].
  /// [description] Description of this VPN gateway.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [network] The network of this VPN gateway.
  /// [project] Optional.
  /// [region] Region of this VPN gateway.
  /// [selfLink] The URI of the resource.
  const GetVPNGatewayResult({
    this.description,
    this.id,
    this.name,
    this.network,
    this.project,
    this.region,
    this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'network': ?network,
      'project': ?project,
      'region': ?region,
      'selfLink': ?selfLink,
    };
  }

  factory GetVPNGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetVPNGatewayResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
