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
  const NetworkPeeringState({
    this.exportCustomRoutes,
    this.exportSubnetRoutesWithPublicIp,
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
      exportCustomRoutes: (() { final guardedValue = map['exportCustomRoutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      exportSubnetRoutesWithPublicIp: (() { final guardedValue = map['exportSubnetRoutesWithPublicIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      importCustomRoutes: (() { final guardedValue = map['importCustomRoutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      importSubnetRoutesWithPublicIp: (() { final guardedValue = map['importSubnetRoutesWithPublicIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerNetwork: (() { final guardedValue = map['peerNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stackType: (() { final guardedValue = map['stackType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stateDetails: (() { final guardedValue = map['stateDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateStrategy: (() { final guardedValue = map['updateStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

