// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNetworkPeering.
class GetNetworkPeeringResult {
  final String createTime;
  final String description;
  final bool exportCustomRoutes;
  final bool exportCustomRoutesWithPublicIp;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool importCustomRoutes;
  final bool importCustomRoutesWithPublicIp;
  final String name;
  final String peerNetwork;
  final String peerNetworkType;
  final String? project;
  final String state;
  final String stateDetails;
  final String uid;
  final String updateTime;
  final String vmwareEngineNetwork;
  final String vmwareEngineNetworkCanonical;

  /// Creates a new [GetNetworkPeeringResult].
  /// [createTime] Required.
  /// [description] Required.
  /// [exportCustomRoutes] Required.
  /// [exportCustomRoutesWithPublicIp] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [importCustomRoutes] Required.
  /// [importCustomRoutesWithPublicIp] Required.
  /// [name] Required.
  /// [peerNetwork] Required.
  /// [peerNetworkType] Required.
  /// [project] Optional.
  /// [state] Required.
  /// [stateDetails] Required.
  /// [uid] Required.
  /// [updateTime] Required.
  /// [vmwareEngineNetwork] Required.
  /// [vmwareEngineNetworkCanonical] Required.
  GetNetworkPeeringResult({
    required this.createTime,
    required this.description,
    required this.exportCustomRoutes,
    required this.exportCustomRoutesWithPublicIp,
    required this.id,
    required this.importCustomRoutes,
    required this.importCustomRoutesWithPublicIp,
    required this.name,
    required this.peerNetwork,
    required this.peerNetworkType,
    this.project,
    required this.state,
    required this.stateDetails,
    required this.uid,
    required this.updateTime,
    required this.vmwareEngineNetwork,
    required this.vmwareEngineNetworkCanonical,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'exportCustomRoutes': exportCustomRoutes,
      'exportCustomRoutesWithPublicIp': exportCustomRoutesWithPublicIp,
      'id': id,
      'importCustomRoutes': importCustomRoutes,
      'importCustomRoutesWithPublicIp': importCustomRoutesWithPublicIp,
      'name': name,
      'peerNetwork': peerNetwork,
      'peerNetworkType': peerNetworkType,
      'project': ?project,
      'state': state,
      'stateDetails': stateDetails,
      'uid': uid,
      'updateTime': updateTime,
      'vmwareEngineNetwork': vmwareEngineNetwork,
      'vmwareEngineNetworkCanonical': vmwareEngineNetworkCanonical,
    };
  }

  factory GetNetworkPeeringResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkPeeringResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      exportCustomRoutes: map['exportCustomRoutes'] as bool,
      exportCustomRoutesWithPublicIp: map['exportCustomRoutesWithPublicIp'] as bool,
      id: map['id'] as String,
      importCustomRoutes: map['importCustomRoutes'] as bool,
      importCustomRoutesWithPublicIp: map['importCustomRoutesWithPublicIp'] as bool,
      name: map['name'] as String,
      peerNetwork: map['peerNetwork'] as String,
      peerNetworkType: map['peerNetworkType'] as String,
      project: map['project'] == null ? null : map['project']! as String,
      state: map['state'] as String,
      stateDetails: map['stateDetails'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
      vmwareEngineNetwork: map['vmwareEngineNetwork'] as String,
      vmwareEngineNetworkCanonical: map['vmwareEngineNetworkCanonical'] as String,
    );
  }
}

