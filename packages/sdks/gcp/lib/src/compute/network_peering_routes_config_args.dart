// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_network_peering_routes_config_network_peering_routes_config_args_doc}
/// The set of arguments for NetworkPeeringRoutesConfig.
/// {@endtemplate}
/// {@macro pulumi_compute_network_peering_routes_config_network_peering_routes_config_args_doc}
class NetworkPeeringRoutesConfigArgs {
  /// Whether to export the custom routes to the peer network.
  final pulumi.Input<bool> exportCustomRoutes;
  /// Whether subnet routes with public IP range are exported.
  /// IPv4 special-use ranges are always exported to peers and
  /// are not controlled by this field.
  final pulumi.Input<bool>? exportSubnetRoutesWithPublicIp;
  /// Whether to import the custom routes to the peer network.
  final pulumi.Input<bool> importCustomRoutes;
  /// Whether subnet routes with public IP range are imported.
  /// IPv4 special-use ranges are always imported from peers and
  /// are not controlled by this field.
  final pulumi.Input<bool>? importSubnetRoutesWithPublicIp;
  /// The name of the primary network for the peering.
  final pulumi.Input<String> network;
  /// Name of the peering.
  final pulumi.Input<String> peering;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [NetworkPeeringRoutesConfigArgs].
  /// [exportCustomRoutes] Whether to export the custom routes to the peer network.
  /// [exportSubnetRoutesWithPublicIp] Whether subnet routes with public IP range are exported.
  /// [importCustomRoutes] Whether to import the custom routes to the peer network.
  /// [importSubnetRoutesWithPublicIp] Whether subnet routes with public IP range are imported.
  /// [network] The name of the primary network for the peering.
  /// [peering] Name of the peering.
  /// [project] The ID of the project in which the resource belongs.
  const NetworkPeeringRoutesConfigArgs({
    required this.exportCustomRoutes,
    this.exportSubnetRoutesWithPublicIp,
    required this.importCustomRoutes,
    this.importSubnetRoutesWithPublicIp,
    required this.network,
    required this.peering,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportCustomRoutes': exportCustomRoutes,
      'exportSubnetRoutesWithPublicIp': ?exportSubnetRoutesWithPublicIp,
      'importCustomRoutes': importCustomRoutes,
      'importSubnetRoutesWithPublicIp': ?importSubnetRoutesWithPublicIp,
      'network': network,
      'peering': peering,
      'project': ?project,
    };
  }

  factory NetworkPeeringRoutesConfigArgs.fromMap(Map<String, dynamic> map) {
    return NetworkPeeringRoutesConfigArgs(
      exportCustomRoutes: pulumi.Input.fromValue(map['exportCustomRoutes'] as bool),
      exportSubnetRoutesWithPublicIp: (() { final guardedValue = map['exportSubnetRoutesWithPublicIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      importCustomRoutes: pulumi.Input.fromValue(map['importCustomRoutes'] as bool),
      importSubnetRoutesWithPublicIp: (() { final guardedValue = map['importSubnetRoutesWithPublicIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      network: pulumi.Input.fromValue(map['network'] as String),
      peering: pulumi.Input.fromValue(map['peering'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
