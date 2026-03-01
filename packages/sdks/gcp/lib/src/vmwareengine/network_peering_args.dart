// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_network_peering_network_peering_args_doc}
/// The set of arguments for NetworkPeering.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_network_peering_network_peering_args_doc}
class NetworkPeeringArgs {
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
  final pulumi.Input<String> peerNetwork;
  /// The type of the network to peer with the VMware Engine network.
  /// Possible values are: `STANDARD`, `VMWARE_ENGINE_NETWORK`, `PRIVATE_SERVICES_ACCESS`, `NETAPP_CLOUD_VOLUMES`, `THIRD_PARTY_SERVICE`, `DELL_POWERSCALE`, `GOOGLE_CLOUD_NETAPP_VOLUMES`.
  final pulumi.Input<String> peerNetworkType;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The relative resource name of the VMware Engine network. Specify the name in the following form:
  /// projects/{project}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId} where {project}
  /// can either be a project number or a project ID.
  final pulumi.Input<String> vmwareEngineNetwork;

  /// Creates a new [NetworkPeeringArgs].
  /// [description] User-provided description for this network peering.
  /// [exportCustomRoutes] True if custom routes are exported to the peered network; false otherwise.
  /// [exportCustomRoutesWithPublicIp] True if all subnet routes with a public IP address range are exported; false otherwise.
  /// [importCustomRoutes] True if custom routes are imported from the peered network; false otherwise.
  /// [importCustomRoutesWithPublicIp] True if custom routes are imported from the peered network; false otherwise.
  /// [name] The ID of the Network Peering.
  /// [peerNetwork] The relative resource name of the network to peer with a standard VMware Engine network.
  /// [peerNetworkType] The type of the network to peer with the VMware Engine network.
  /// [project] The ID of the project in which the resource belongs.
  /// [vmwareEngineNetwork] The relative resource name of the VMware Engine network. Specify the name in the following form:
  NetworkPeeringArgs({
    pulumi.Output<String>? description,
    pulumi.Output<bool>? exportCustomRoutes,
    pulumi.Output<bool>? exportCustomRoutesWithPublicIp,
    pulumi.Output<bool>? importCustomRoutes,
    pulumi.Output<bool>? importCustomRoutesWithPublicIp,
    pulumi.Output<String>? name,
    required pulumi.Output<String> peerNetwork,
    required pulumi.Output<String> peerNetworkType,
    pulumi.Output<String>? project,
    required pulumi.Output<String> vmwareEngineNetwork,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      exportCustomRoutes = pulumi.Input.asOptionalInput<bool>(exportCustomRoutes),
      exportCustomRoutesWithPublicIp = pulumi.Input.asOptionalInput<bool>(exportCustomRoutesWithPublicIp),
      importCustomRoutes = pulumi.Input.asOptionalInput<bool>(importCustomRoutes),
      importCustomRoutesWithPublicIp = pulumi.Input.asOptionalInput<bool>(importCustomRoutesWithPublicIp),
      name = pulumi.Input.asOptionalInput<String>(name),
      peerNetwork = pulumi.Input.asInput<String>(peerNetwork),
      peerNetworkType = pulumi.Input.asInput<String>(peerNetworkType),
      project = pulumi.Input.asOptionalInput<String>(project),
      vmwareEngineNetwork = pulumi.Input.asInput<String>(vmwareEngineNetwork);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'exportCustomRoutes': ?exportCustomRoutes,
      'exportCustomRoutesWithPublicIp': ?exportCustomRoutesWithPublicIp,
      'importCustomRoutes': ?importCustomRoutes,
      'importCustomRoutesWithPublicIp': ?importCustomRoutesWithPublicIp,
      'name': ?name,
      'peerNetwork': peerNetwork,
      'peerNetworkType': peerNetworkType,
      'project': ?project,
      'vmwareEngineNetwork': vmwareEngineNetwork,
    };
  }

  factory NetworkPeeringArgs.fromMap(Map<String, dynamic> map) {
    return NetworkPeeringArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      exportCustomRoutes: map['exportCustomRoutes'] == null ? null : pulumi.Output.create<bool>(map['exportCustomRoutes'] as bool),
      exportCustomRoutesWithPublicIp: map['exportCustomRoutesWithPublicIp'] == null ? null : pulumi.Output.create<bool>(map['exportCustomRoutesWithPublicIp'] as bool),
      importCustomRoutes: map['importCustomRoutes'] == null ? null : pulumi.Output.create<bool>(map['importCustomRoutes'] as bool),
      importCustomRoutesWithPublicIp: map['importCustomRoutesWithPublicIp'] == null ? null : pulumi.Output.create<bool>(map['importCustomRoutesWithPublicIp'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      peerNetwork: pulumi.Output.create<String>(map['peerNetwork'] as String),
      peerNetworkType: pulumi.Output.create<String>(map['peerNetworkType'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      vmwareEngineNetwork: pulumi.Output.create<String>(map['vmwareEngineNetwork'] as String),
    );
  }
}

