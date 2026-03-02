// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkPeeringRoutesConfig resources.
class NetworkPeeringRoutesConfigState {
  /// Whether to export the custom routes to the peer network.
  final pulumi.Input<bool>? exportCustomRoutes;
  /// Whether subnet routes with public IP range are exported.
  /// IPv4 special-use ranges are always exported to peers and
  /// are not controlled by this field.
  final pulumi.Input<bool>? exportSubnetRoutesWithPublicIp;
  /// Whether to import the custom routes to the peer network.
  final pulumi.Input<bool>? importCustomRoutes;
  /// Whether subnet routes with public IP range are imported.
  /// IPv4 special-use ranges are always imported from peers and
  /// are not controlled by this field.
  final pulumi.Input<bool>? importSubnetRoutesWithPublicIp;
  /// The name of the primary network for the peering.
  final pulumi.Input<String>? network;
  /// Name of the peering.
  final pulumi.Input<String>? peering;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [NetworkPeeringRoutesConfigState].
  /// [exportCustomRoutes] Whether to export the custom routes to the peer network.
  /// [exportSubnetRoutesWithPublicIp] Whether subnet routes with public IP range are exported.
  /// [importCustomRoutes] Whether to import the custom routes to the peer network.
  /// [importSubnetRoutesWithPublicIp] Whether subnet routes with public IP range are imported.
  /// [network] The name of the primary network for the peering.
  /// [peering] Name of the peering.
  /// [project] The ID of the project in which the resource belongs.
  NetworkPeeringRoutesConfigState({
    this.exportCustomRoutes,
    this.exportSubnetRoutesWithPublicIp,
    this.importCustomRoutes,
    this.importSubnetRoutesWithPublicIp,
    this.network,
    this.peering,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportCustomRoutes': ?exportCustomRoutes,
      'exportSubnetRoutesWithPublicIp': ?exportSubnetRoutesWithPublicIp,
      'importCustomRoutes': ?importCustomRoutes,
      'importSubnetRoutesWithPublicIp': ?importSubnetRoutesWithPublicIp,
      'network': ?network,
      'peering': ?peering,
      'project': ?project,
    };
  }

  factory NetworkPeeringRoutesConfigState.fromMap(Map<String, dynamic> map) {
    return NetworkPeeringRoutesConfigState(
      exportCustomRoutes: map['exportCustomRoutes'] == null ? null : (map['exportCustomRoutes']! as bool).input(),
      exportSubnetRoutesWithPublicIp: map['exportSubnetRoutesWithPublicIp'] == null ? null : (map['exportSubnetRoutesWithPublicIp']! as bool).input(),
      importCustomRoutes: map['importCustomRoutes'] == null ? null : (map['importCustomRoutes']! as bool).input(),
      importSubnetRoutesWithPublicIp: map['importSubnetRoutesWithPublicIp'] == null ? null : (map['importSubnetRoutesWithPublicIp']! as bool).input(),
      network: map['network'] == null ? null : (map['network']! as String).input(),
      peering: map['peering'] == null ? null : (map['peering']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

