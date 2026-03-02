// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_network_peering_network_peering_args_doc}
/// The set of arguments for NetworkPeering.
/// {@endtemplate}
/// {@macro pulumi_compute_network_peering_network_peering_args_doc}
class NetworkPeeringArgs {
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
  final pulumi.Input<String> network;
  /// The peer network in the peering. The peer network
  /// may belong to a different project.
  final pulumi.Input<String> peerNetwork;
  /// Which IP version(s) of traffic and routes are allowed to be imported or exported between peer networks. The default value is IPV4_ONLY. Possible values: ["IPV4_ONLY", "IPV4_IPV6"].
  final pulumi.Input<String>? stackType;
  /// The update strategy determines the semantics for updates and deletes to the peering connection configuration. The default value is INDEPENDENT. Possible values: ["INDEPENDENT", "CONSENSUS"]
  final pulumi.Input<String>? updateStrategy;

  /// Creates a new [NetworkPeeringArgs].
  /// [exportCustomRoutes] Whether to export the custom routes to the peer network. Defaults to `false`.
  /// [exportSubnetRoutesWithPublicIp] Whether subnet routes with public IP range are exported. The default value is true, all subnet routes are exported. The IPv4 special-use ranges (https://en.wikipedia.org/wiki/IPv4#Special_addresses) are always exported to peers and are not controlled by this field.
  /// [importCustomRoutes] Whether to import the custom routes from the peer network. Defaults to `false`.
  /// [importSubnetRoutesWithPublicIp] Whether subnet routes with public IP range are imported. The default value is false. The IPv4 special-use ranges (https://en.wikipedia.org/wiki/IPv4#Special_addresses) are always imported from peers and are not controlled by this field.
  /// [name] Name of the peering.
  /// [network] The primary network of the peering.
  /// [peerNetwork] The peer network in the peering. The peer network
  /// [stackType] Which IP version(s) of traffic and routes are allowed to be imported or exported between peer networks. The default value is IPV4_ONLY. Possible values: ["IPV4_ONLY", "IPV4_IPV6"].
  /// [updateStrategy] The update strategy determines the semantics for updates and deletes to the peering connection configuration. The default value is INDEPENDENT. Possible values: ["INDEPENDENT", "CONSENSUS"]
  NetworkPeeringArgs({
    this.exportCustomRoutes,
    this.exportSubnetRoutesWithPublicIp,
    this.importCustomRoutes,
    this.importSubnetRoutesWithPublicIp,
    this.name,
    required this.network,
    required this.peerNetwork,
    this.stackType,
    this.updateStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportCustomRoutes': ?exportCustomRoutes,
      'exportSubnetRoutesWithPublicIp': ?exportSubnetRoutesWithPublicIp,
      'importCustomRoutes': ?importCustomRoutes,
      'importSubnetRoutesWithPublicIp': ?importSubnetRoutesWithPublicIp,
      'name': ?name,
      'network': network,
      'peerNetwork': peerNetwork,
      'stackType': ?stackType,
      'updateStrategy': ?updateStrategy,
    };
  }

  factory NetworkPeeringArgs.fromMap(Map<String, dynamic> map) {
    return NetworkPeeringArgs(
      exportCustomRoutes: map['exportCustomRoutes'] == null ? null : (map['exportCustomRoutes'] as bool).input(),
      exportSubnetRoutesWithPublicIp: map['exportSubnetRoutesWithPublicIp'] == null ? null : (map['exportSubnetRoutesWithPublicIp'] as bool).input(),
      importCustomRoutes: map['importCustomRoutes'] == null ? null : (map['importCustomRoutes'] as bool).input(),
      importSubnetRoutesWithPublicIp: map['importSubnetRoutesWithPublicIp'] == null ? null : (map['importSubnetRoutesWithPublicIp'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      network: (map['network'] as String).input(),
      peerNetwork: (map['peerNetwork'] as String).input(),
      stackType: map['stackType'] == null ? null : (map['stackType'] as String).input(),
      updateStrategy: map['updateStrategy'] == null ? null : (map['updateStrategy'] as String).input(),
    );
  }
}

