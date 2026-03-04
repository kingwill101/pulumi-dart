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
    this.createTime,
    this.description,
    this.exportCustomRoutes,
    this.exportCustomRoutesWithPublicIp,
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
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      exportCustomRoutes: (() {
        final guardedValue = map['exportCustomRoutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      exportCustomRoutesWithPublicIp: (() {
        final guardedValue = map['exportCustomRoutesWithPublicIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      importCustomRoutes: (() {
        final guardedValue = map['importCustomRoutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      importCustomRoutesWithPublicIp: (() {
        final guardedValue = map['importCustomRoutesWithPublicIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      peerNetwork: (() {
        final guardedValue = map['peerNetwork'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      peerNetworkType: (() {
        final guardedValue = map['peerNetworkType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stateDetails: (() {
        final guardedValue = map['stateDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      uid: (() {
        final guardedValue = map['uid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vmwareEngineNetwork: (() {
        final guardedValue = map['vmwareEngineNetwork'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vmwareEngineNetworkCanonical: (() {
        final guardedValue = map['vmwareEngineNetworkCanonical'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
