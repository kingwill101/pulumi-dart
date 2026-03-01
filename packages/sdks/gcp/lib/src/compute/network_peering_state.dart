// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkPeering resources.
class NetworkPeeringState {
  /// Whether to export the custom routes to the peer network. Defaults to `false`.
  final pulumi.Input<bool>? exportCustomRoutes;
  /// Whether subnet routes with public IP range are exported. The default value is true, all subnet routes are exported. The IPv4 special-use ranges (https://en.wikipedia.org/wiki/IPv4#Special_addresses) are always exported to peers and are not controlled by this field.
  final pulumi.Input<bool>? exportSubnetRoutesWithPublicIp;
  /// Whether to import the custom routes from the peer network. Defaults to `false`.
  final pulumi.Input<bool>? importCustomRoutes;
  /// Whether subnet routes with public IP range are imported. The default value is false. The IPv4 special-use ranges (https://en.wikipedia.org/wiki/IPv4#Special_addresses) are always imported from peers and are not controlled by this field.
  final pulumi.Input<bool>? importSubnetRoutesWithPublicIp;
  /// Name of the peering.
  final pulumi.Input<String>? name;
  /// The primary network of the peering.
  final pulumi.Input<String>? network;
  /// The peer network in the peering. The peer network
  /// may belong to a different project.
  final pulumi.Input<String>? peerNetwork;
  /// Which IP version(s) of traffic and routes are allowed to be imported or exported between peer networks. The default value is IPV4_ONLY. Possible values: ["IPV4_ONLY", "IPV4_IPV6"].
  final pulumi.Input<String>? stackType;
  /// State for the peering, either `ACTIVE` or `INACTIVE`. The peering is
  /// `ACTIVE` when there's a matching configuration in the peer network.
  final pulumi.Input<String>? state;
  /// Details about the current state of the peering.
  final pulumi.Input<String>? stateDetails;
  /// The update strategy determines the semantics for updates and deletes to the peering connection configuration. The default value is INDEPENDENT. Possible values: ["INDEPENDENT", "CONSENSUS"]
  final pulumi.Input<String>? updateStrategy;

  /// Creates a new [NetworkPeeringState].
  /// [exportCustomRoutes] Whether to export the custom routes to the peer network. Defaults to `false`.
  /// [exportSubnetRoutesWithPublicIp] Whether subnet routes with public IP range are exported. The default value is true, all subnet routes are exported. The IPv4 special-use ranges (https://en.wikipedia.org/wiki/IPv4#Special_addresses) are always exported to peers and are not controlled by this field.
  /// [importCustomRoutes] Whether to import the custom routes from the peer network. Defaults to `false`.
  /// [importSubnetRoutesWithPublicIp] Whether subnet routes with public IP range are imported. The default value is false. The IPv4 special-use ranges (https://en.wikipedia.org/wiki/IPv4#Special_addresses) are always imported from peers and are not controlled by this field.
  /// [name] Name of the peering.
  /// [network] The primary network of the peering.
  /// [peerNetwork] The peer network in the peering. The peer network
  /// [stackType] Which IP version(s) of traffic and routes are allowed to be imported or exported between peer networks. The default value is IPV4_ONLY. Possible values: ["IPV4_ONLY", "IPV4_IPV6"].
  /// [state] State for the peering, either `ACTIVE` or `INACTIVE`. The peering is
  /// [stateDetails] Details about the current state of the peering.
  /// [updateStrategy] The update strategy determines the semantics for updates and deletes to the peering connection configuration. The default value is INDEPENDENT. Possible values: ["INDEPENDENT", "CONSENSUS"]
  NetworkPeeringState({
    pulumi.Output<bool>? exportCustomRoutes,
    pulumi.Output<bool>? exportSubnetRoutesWithPublicIp,
    pulumi.Output<bool>? importCustomRoutes,
    pulumi.Output<bool>? importSubnetRoutesWithPublicIp,
    pulumi.Output<String>? name,
    pulumi.Output<String>? network,
    pulumi.Output<String>? peerNetwork,
    pulumi.Output<String>? stackType,
    pulumi.Output<String>? state,
    pulumi.Output<String>? stateDetails,
    pulumi.Output<String>? updateStrategy,
  }) :
      exportCustomRoutes = pulumi.Input.asOptionalInput<bool>(exportCustomRoutes),
      exportSubnetRoutesWithPublicIp = pulumi.Input.asOptionalInput<bool>(exportSubnetRoutesWithPublicIp),
      importCustomRoutes = pulumi.Input.asOptionalInput<bool>(importCustomRoutes),
      importSubnetRoutesWithPublicIp = pulumi.Input.asOptionalInput<bool>(importSubnetRoutesWithPublicIp),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<String>(network),
      peerNetwork = pulumi.Input.asOptionalInput<String>(peerNetwork),
      stackType = pulumi.Input.asOptionalInput<String>(stackType),
      state = pulumi.Input.asOptionalInput<String>(state),
      stateDetails = pulumi.Input.asOptionalInput<String>(stateDetails),
      updateStrategy = pulumi.Input.asOptionalInput<String>(updateStrategy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportCustomRoutes': ?exportCustomRoutes,
      'exportSubnetRoutesWithPublicIp': ?exportSubnetRoutesWithPublicIp,
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

  factory NetworkPeeringState.fromMap(Map<String, dynamic> map) {
    return NetworkPeeringState(
      exportCustomRoutes: map['exportCustomRoutes'] == null ? null : pulumi.Output.create<bool>(map['exportCustomRoutes'] as bool),
      exportSubnetRoutesWithPublicIp: map['exportSubnetRoutesWithPublicIp'] == null ? null : pulumi.Output.create<bool>(map['exportSubnetRoutesWithPublicIp'] as bool),
      importCustomRoutes: map['importCustomRoutes'] == null ? null : pulumi.Output.create<bool>(map['importCustomRoutes'] as bool),
      importSubnetRoutesWithPublicIp: map['importSubnetRoutesWithPublicIp'] == null ? null : pulumi.Output.create<bool>(map['importSubnetRoutesWithPublicIp'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<String>(map['network'] as String),
      peerNetwork: map['peerNetwork'] == null ? null : pulumi.Output.create<String>(map['peerNetwork'] as String),
      stackType: map['stackType'] == null ? null : pulumi.Output.create<String>(map['stackType'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      stateDetails: map['stateDetails'] == null ? null : pulumi.Output.create<String>(map['stateDetails'] as String),
      updateStrategy: map['updateStrategy'] == null ? null : pulumi.Output.create<String>(map['updateStrategy'] as String),
    );
  }
}

