// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkPeering resources.
class NetworkPeeringState {
  /// Creation time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? createTime;
  /// User-provided description for this network peering.
  final pulumi.Input<String>? description;
  /// True if custom routes are exported to the peered network; false otherwise.
  final pulumi.Input<bool>? exportCustomRoutes;
  /// True if all subnet routes with a public IP address range are exported; false otherwise.
  final pulumi.Input<bool>? exportCustomRoutesWithPublicIp;
  /// True if custom routes are imported from the peered network; false otherwise.
  final pulumi.Input<bool>? importCustomRoutes;
  /// True if custom routes are imported from the peered network; false otherwise.
  final pulumi.Input<bool>? importCustomRoutesWithPublicIp;
  /// The ID of the Network Peering.
  final pulumi.Input<String>? name;
  /// The relative resource name of the network to peer with a standard VMware Engine network.
  /// The provided network can be a consumer VPC network or another standard VMware Engine network.
  final pulumi.Input<String>? peerNetwork;
  /// The type of the network to peer with the VMware Engine network.
  /// Possible values are: `STANDARD`, `VMWARE_ENGINE_NETWORK`, `PRIVATE_SERVICES_ACCESS`, `NETAPP_CLOUD_VOLUMES`, `THIRD_PARTY_SERVICE`, `DELL_POWERSCALE`, `GOOGLE_CLOUD_NETAPP_VOLUMES`.
  final pulumi.Input<String>? peerNetworkType;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// State of the network peering.
  /// This field has a value of 'ACTIVE' when there's a matching configuration in the peer network.
  /// New values may be added to this enum when appropriate.
  final pulumi.Input<String>? state;
  /// Details about the current state of the network peering.
  final pulumi.Input<String>? stateDetails;
  /// System-generated unique identifier for the resource.
  final pulumi.Input<String>? uid;
  /// Last updated time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? updateTime;
  /// The relative resource name of the VMware Engine network. Specify the name in the following form:
  /// projects/{project}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId} where {project}
  /// can either be a project number or a project ID.
  final pulumi.Input<String>? vmwareEngineNetwork;
  /// The canonical name of the VMware Engine network in the form:
  /// projects/{project_number}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId}
  final pulumi.Input<String>? vmwareEngineNetworkCanonical;

  /// Creates a new [NetworkPeeringState].
  /// [createTime] Creation time of this resource.
  /// [description] User-provided description for this network peering.
  /// [exportCustomRoutes] True if custom routes are exported to the peered network; false otherwise.
  /// [exportCustomRoutesWithPublicIp] True if all subnet routes with a public IP address range are exported; false otherwise.
  /// [importCustomRoutes] True if custom routes are imported from the peered network; false otherwise.
  /// [importCustomRoutesWithPublicIp] True if custom routes are imported from the peered network; false otherwise.
  /// [name] The ID of the Network Peering.
  /// [peerNetwork] The relative resource name of the network to peer with a standard VMware Engine network.
  /// [peerNetworkType] The type of the network to peer with the VMware Engine network.
  /// [project] The ID of the project in which the resource belongs.
  /// [state] State of the network peering.
  /// [stateDetails] Details about the current state of the network peering.
  /// [uid] System-generated unique identifier for the resource.
  /// [updateTime] Last updated time of this resource.
  /// [vmwareEngineNetwork] The relative resource name of the VMware Engine network. Specify the name in the following form:
  /// [vmwareEngineNetworkCanonical] The canonical name of the VMware Engine network in the form:
  NetworkPeeringState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? exportCustomRoutes,
    pulumi.Output<bool>? exportCustomRoutesWithPublicIp,
    pulumi.Output<bool>? importCustomRoutes,
    pulumi.Output<bool>? importCustomRoutesWithPublicIp,
    pulumi.Output<String>? name,
    pulumi.Output<String>? peerNetwork,
    pulumi.Output<String>? peerNetworkType,
    pulumi.Output<String>? project,
    pulumi.Output<String>? state,
    pulumi.Output<String>? stateDetails,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
    pulumi.Output<String>? vmwareEngineNetwork,
    pulumi.Output<String>? vmwareEngineNetworkCanonical,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      exportCustomRoutes = pulumi.Input.asOptionalInput<bool>(exportCustomRoutes),
      exportCustomRoutesWithPublicIp = pulumi.Input.asOptionalInput<bool>(exportCustomRoutesWithPublicIp),
      importCustomRoutes = pulumi.Input.asOptionalInput<bool>(importCustomRoutes),
      importCustomRoutesWithPublicIp = pulumi.Input.asOptionalInput<bool>(importCustomRoutesWithPublicIp),
      name = pulumi.Input.asOptionalInput<String>(name),
      peerNetwork = pulumi.Input.asOptionalInput<String>(peerNetwork),
      peerNetworkType = pulumi.Input.asOptionalInput<String>(peerNetworkType),
      project = pulumi.Input.asOptionalInput<String>(project),
      state = pulumi.Input.asOptionalInput<String>(state),
      stateDetails = pulumi.Input.asOptionalInput<String>(stateDetails),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      vmwareEngineNetwork = pulumi.Input.asOptionalInput<String>(vmwareEngineNetwork),
      vmwareEngineNetworkCanonical = pulumi.Input.asOptionalInput<String>(vmwareEngineNetworkCanonical);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'exportCustomRoutes': ?exportCustomRoutes,
      'exportCustomRoutesWithPublicIp': ?exportCustomRoutesWithPublicIp,
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

  factory NetworkPeeringState.fromMap(Map<String, dynamic> map) {
    return NetworkPeeringState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      exportCustomRoutes: map['exportCustomRoutes'] == null ? null : pulumi.Output.create<bool>(map['exportCustomRoutes'] as bool),
      exportCustomRoutesWithPublicIp: map['exportCustomRoutesWithPublicIp'] == null ? null : pulumi.Output.create<bool>(map['exportCustomRoutesWithPublicIp'] as bool),
      importCustomRoutes: map['importCustomRoutes'] == null ? null : pulumi.Output.create<bool>(map['importCustomRoutes'] as bool),
      importCustomRoutesWithPublicIp: map['importCustomRoutesWithPublicIp'] == null ? null : pulumi.Output.create<bool>(map['importCustomRoutesWithPublicIp'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      peerNetwork: map['peerNetwork'] == null ? null : pulumi.Output.create<String>(map['peerNetwork'] as String),
      peerNetworkType: map['peerNetworkType'] == null ? null : pulumi.Output.create<String>(map['peerNetworkType'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      stateDetails: map['stateDetails'] == null ? null : pulumi.Output.create<String>(map['stateDetails'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      vmwareEngineNetwork: map['vmwareEngineNetwork'] == null ? null : pulumi.Output.create<String>(map['vmwareEngineNetwork'] as String),
      vmwareEngineNetworkCanonical: map['vmwareEngineNetworkCanonical'] == null ? null : pulumi.Output.create<String>(map['vmwareEngineNetworkCanonical'] as String),
    );
  }
}

