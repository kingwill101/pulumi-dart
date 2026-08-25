// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNetworkPeering.
class GetNetworkPeeringResult {
  final String? createTime;
  final String? deletionPolicy;
  final String? description;
  final bool? exportCustomRoutes;
  final bool? exportCustomRoutesWithPublicIp;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final bool? importCustomRoutes;
  final bool? importCustomRoutesWithPublicIp;
  final String? name;
  final String? peerNetwork;
  final String? peerNetworkType;
  final String? project;
  final String? state;
  final String? stateDetails;
  final String? uid;
  final String? updateTime;
  final String? vmwareEngineNetwork;
  final String? vmwareEngineNetworkCanonical;

  /// Creates a new [GetNetworkPeeringResult].
  /// [createTime] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [exportCustomRoutes] Optional.
  /// [exportCustomRoutesWithPublicIp] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [importCustomRoutes] Optional.
  /// [importCustomRoutesWithPublicIp] Optional.
  /// [name] Optional.
  /// [peerNetwork] Optional.
  /// [peerNetworkType] Optional.
  /// [project] Optional.
  /// [state] Optional.
  /// [stateDetails] Optional.
  /// [uid] Optional.
  /// [updateTime] Optional.
  /// [vmwareEngineNetwork] Optional.
  /// [vmwareEngineNetworkCanonical] Optional.
  const GetNetworkPeeringResult({
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.exportCustomRoutes,
    this.exportCustomRoutesWithPublicIp,
    this.id,
    this.importCustomRoutes,
    this.importCustomRoutesWithPublicIp,
    this.name,
    this.peerNetwork,
    this.peerNetworkType,
    this.project,
    this.state,
    this.stateDetails,
    this.uid,
    this.updateTime,
    this.vmwareEngineNetwork,
    this.vmwareEngineNetworkCanonical,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'exportCustomRoutes': ?exportCustomRoutes,
      'exportCustomRoutesWithPublicIp': ?exportCustomRoutesWithPublicIp,
      'id': ?id,
      'importCustomRoutes': ?importCustomRoutes,
      'importCustomRoutesWithPublicIp': ?importCustomRoutesWithPublicIp,
      'name': ?name,
      'peerNetwork': ?peerNetwork,
      'peerNetworkType': ?peerNetworkType,
      'project': ?project,
      'state': ?state,
      'stateDetails': ?stateDetails,
      'uid': ?uid,
      'updateTime': ?updateTime,
      'vmwareEngineNetwork': ?vmwareEngineNetwork,
      'vmwareEngineNetworkCanonical': ?vmwareEngineNetworkCanonical,
    };
  }

  factory GetNetworkPeeringResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkPeeringResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      exportCustomRoutes: (() { final guardedValue = map['exportCustomRoutes']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      exportCustomRoutesWithPublicIp: (() { final guardedValue = map['exportCustomRoutesWithPublicIp']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      importCustomRoutes: (() { final guardedValue = map['importCustomRoutes']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      importCustomRoutesWithPublicIp: (() { final guardedValue = map['importCustomRoutesWithPublicIp']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peerNetwork: (() { final guardedValue = map['peerNetwork']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peerNetworkType: (() { final guardedValue = map['peerNetworkType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateDetails: (() { final guardedValue = map['stateDetails']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmwareEngineNetwork: (() { final guardedValue = map['vmwareEngineNetwork']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmwareEngineNetworkCanonical: (() { final guardedValue = map['vmwareEngineNetworkCanonical']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
