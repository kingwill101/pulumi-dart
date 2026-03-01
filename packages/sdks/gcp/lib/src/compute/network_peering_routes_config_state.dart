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
    pulumi.Output<bool>? exportCustomRoutes,
    pulumi.Output<bool>? exportSubnetRoutesWithPublicIp,
    pulumi.Output<bool>? importCustomRoutes,
    pulumi.Output<bool>? importSubnetRoutesWithPublicIp,
    pulumi.Output<String>? network,
    pulumi.Output<String>? peering,
    pulumi.Output<String>? project,
  }) :
      exportCustomRoutes = pulumi.Input.asOptionalInput<bool>(exportCustomRoutes),
      exportSubnetRoutesWithPublicIp = pulumi.Input.asOptionalInput<bool>(exportSubnetRoutesWithPublicIp),
      importCustomRoutes = pulumi.Input.asOptionalInput<bool>(importCustomRoutes),
      importSubnetRoutesWithPublicIp = pulumi.Input.asOptionalInput<bool>(importSubnetRoutesWithPublicIp),
      network = pulumi.Input.asOptionalInput<String>(network),
      peering = pulumi.Input.asOptionalInput<String>(peering),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      exportCustomRoutes: map['exportCustomRoutes'] == null ? null : pulumi.Output.create<bool>(map['exportCustomRoutes'] as bool),
      exportSubnetRoutesWithPublicIp: map['exportSubnetRoutesWithPublicIp'] == null ? null : pulumi.Output.create<bool>(map['exportSubnetRoutesWithPublicIp'] as bool),
      importCustomRoutes: map['importCustomRoutes'] == null ? null : pulumi.Output.create<bool>(map['importCustomRoutes'] as bool),
      importSubnetRoutesWithPublicIp: map['importSubnetRoutesWithPublicIp'] == null ? null : pulumi.Output.create<bool>(map['importSubnetRoutesWithPublicIp'] as bool),
      network: map['network'] == null ? null : pulumi.Output.create<String>(map['network'] as String),
      peering: map['peering'] == null ? null : pulumi.Output.create<String>(map['peering'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

