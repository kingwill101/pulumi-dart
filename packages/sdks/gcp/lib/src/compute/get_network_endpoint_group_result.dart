// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNetworkEndpointGroup.
class GetNetworkEndpointGroupResult {
  /// The NEG default port.
  final int defaultPort;
  final String deletionPolicy;
  /// The NEG description.
  final String description;
  final int generatedId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? name;
  /// The network to which all network endpoints in the NEG belong.
  final String network;
  /// Type of network endpoints in this network endpoint group.
  final String networkEndpointType;
  final String? project;
  final String? selfLink;
  /// Number of network endpoints in the network endpoint group.
  final int size;
  /// subnetwork to which all network endpoints in the NEG belong.
  final String subnetwork;
  final String? zone;

  /// Creates a new [GetNetworkEndpointGroupResult].
  /// [defaultPort] The NEG default port.
  /// [deletionPolicy] Required.
  /// [description] The NEG description.
  /// [generatedId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [network] The network to which all network endpoints in the NEG belong.
  /// [networkEndpointType] Type of network endpoints in this network endpoint group.
  /// [project] Optional.
  /// [selfLink] Optional.
  /// [size] Number of network endpoints in the network endpoint group.
  /// [subnetwork] subnetwork to which all network endpoints in the NEG belong.
  /// [zone] Optional.
  const GetNetworkEndpointGroupResult({
    required this.defaultPort,
    required this.deletionPolicy,
    required this.description,
    required this.generatedId,
    required this.id,
    this.name,
    required this.network,
    required this.networkEndpointType,
    this.project,
    this.selfLink,
    required this.size,
    required this.subnetwork,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultPort': defaultPort,
      'deletionPolicy': deletionPolicy,
      'description': description,
      'generatedId': generatedId,
      'id': id,
      'name': ?name,
      'network': network,
      'networkEndpointType': networkEndpointType,
      'project': ?project,
      'selfLink': ?selfLink,
      'size': size,
      'subnetwork': subnetwork,
      'zone': ?zone,
    };
  }

  factory GetNetworkEndpointGroupResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkEndpointGroupResult(
      defaultPort: map['defaultPort'] as int,
      deletionPolicy: map['deletionPolicy'] as String,
      description: map['description'] as String,
      generatedId: map['generatedId'] as int,
      id: map['id'] as String,
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: map['network'] as String,
      networkEndpointType: map['networkEndpointType'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      size: map['size'] as int,
      subnetwork: map['subnetwork'] as String,
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
