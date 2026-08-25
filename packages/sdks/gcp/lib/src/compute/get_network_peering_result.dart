// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNetworkPeering.
class GetNetworkPeeringResult {
  final String? deletionPolicy;
  final bool? exportCustomRoutes;
  final bool? exportSubnetRoutesWithPublicIp;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final bool? importCustomRoutes;
  final bool? importSubnetRoutesWithPublicIp;
  final String? name;
  final String? network;
  final String? peerNetwork;
  final String? stackType;
  final String? state;
  final String? stateDetails;
  final String? updateStrategy;

  /// Creates a new [GetNetworkPeeringResult].
  /// [deletionPolicy] Optional.
  /// [exportCustomRoutes] Optional.
  /// [exportSubnetRoutesWithPublicIp] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [importCustomRoutes] Optional.
  /// [importSubnetRoutesWithPublicIp] Optional.
  /// [name] Optional.
  /// [network] Optional.
  /// [peerNetwork] Optional.
  /// [stackType] Optional.
  /// [state] Optional.
  /// [stateDetails] Optional.
  /// [updateStrategy] Optional.
  const GetNetworkPeeringResult({
    this.deletionPolicy,
    this.exportCustomRoutes,
    this.exportSubnetRoutesWithPublicIp,
    this.id,
    this.importCustomRoutes,
    this.importSubnetRoutesWithPublicIp,
    this.name,
    this.network,
    this.peerNetwork,
    this.stackType,
    this.state,
    this.stateDetails,
    this.updateStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'exportCustomRoutes': ?exportCustomRoutes,
      'exportSubnetRoutesWithPublicIp': ?exportSubnetRoutesWithPublicIp,
      'id': ?id,
      'importCustomRoutes': ?importCustomRoutes,
      'importSubnetRoutesWithPublicIp': ?importSubnetRoutesWithPublicIp,
      'name': ?name,
      'network': ?network,
      'peerNetwork': ?peerNetwork,
      'stackType': ?stackType,
      'state': ?state,
      'stateDetails': ?stateDetails,
      'updateStrategy': ?updateStrategy,
    };
  }

  factory GetNetworkPeeringResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkPeeringResult(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      exportCustomRoutes: (() { final guardedValue = map['exportCustomRoutes']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      exportSubnetRoutesWithPublicIp: (() { final guardedValue = map['exportSubnetRoutesWithPublicIp']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      importCustomRoutes: (() { final guardedValue = map['importCustomRoutes']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      importSubnetRoutesWithPublicIp: (() { final guardedValue = map['importSubnetRoutesWithPublicIp']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peerNetwork: (() { final guardedValue = map['peerNetwork']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stackType: (() { final guardedValue = map['stackType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateDetails: (() { final guardedValue = map['stateDetails']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateStrategy: (() { final guardedValue = map['updateStrategy']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
