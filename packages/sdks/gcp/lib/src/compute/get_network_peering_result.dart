// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNetworkPeering.
class GetNetworkPeeringResult {
  final String deletionPolicy;
  final bool exportCustomRoutes;
  final bool exportSubnetRoutesWithPublicIp;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool importCustomRoutes;
  final bool importSubnetRoutesWithPublicIp;
  final String name;
  final String network;
  final String peerNetwork;
  final String stackType;
  final String state;
  final String stateDetails;
  final String updateStrategy;

  /// Creates a new [GetNetworkPeeringResult].
  /// [deletionPolicy] Required.
  /// [exportCustomRoutes] Required.
  /// [exportSubnetRoutesWithPublicIp] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [importCustomRoutes] Required.
  /// [importSubnetRoutesWithPublicIp] Required.
  /// [name] Required.
  /// [network] Required.
  /// [peerNetwork] Required.
  /// [stackType] Required.
  /// [state] Required.
  /// [stateDetails] Required.
  /// [updateStrategy] Required.
  const GetNetworkPeeringResult({
    required this.deletionPolicy,
    required this.exportCustomRoutes,
    required this.exportSubnetRoutesWithPublicIp,
    required this.id,
    required this.importCustomRoutes,
    required this.importSubnetRoutesWithPublicIp,
    required this.name,
    required this.network,
    required this.peerNetwork,
    required this.stackType,
    required this.state,
    required this.stateDetails,
    required this.updateStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': deletionPolicy,
      'exportCustomRoutes': exportCustomRoutes,
      'exportSubnetRoutesWithPublicIp': exportSubnetRoutesWithPublicIp,
      'id': id,
      'importCustomRoutes': importCustomRoutes,
      'importSubnetRoutesWithPublicIp': importSubnetRoutesWithPublicIp,
      'name': name,
      'network': network,
      'peerNetwork': peerNetwork,
      'stackType': stackType,
      'state': state,
      'stateDetails': stateDetails,
      'updateStrategy': updateStrategy,
    };
  }

  factory GetNetworkPeeringResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkPeeringResult(
      deletionPolicy: map['deletionPolicy'] as String,
      exportCustomRoutes: map['exportCustomRoutes'] as bool,
      exportSubnetRoutesWithPublicIp: map['exportSubnetRoutesWithPublicIp'] as bool,
      id: map['id'] as String,
      importCustomRoutes: map['importCustomRoutes'] as bool,
      importSubnetRoutesWithPublicIp: map['importSubnetRoutesWithPublicIp'] as bool,
      name: map['name'] as String,
      network: map['network'] as String,
      peerNetwork: map['peerNetwork'] as String,
      stackType: map['stackType'] as String,
      state: map['state'] as String,
      stateDetails: map['stateDetails'] as String,
      updateStrategy: map['updateStrategy'] as String,
    );
  }
}
