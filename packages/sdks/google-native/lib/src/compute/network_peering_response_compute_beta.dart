// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A network peering attached to a network resource. The message includes the peering name, peer network, peering state, and a flag indicating whether Google Compute Engine should automatically create routes for the peering.
class NetworkPeeringResponseComputeBeta {
  /// This field will be deprecated soon. Use the exchange_subnet_routes field instead. Indicates whether full mesh connectivity is created and managed automatically between peered networks. Currently this field should always be true since Google Compute Engine will automatically create and manage subnetwork routes between two networks when peering state is ACTIVE.
  final pulumi.Input<bool> autoCreateRoutes;
  /// Indicates whether full mesh connectivity is created and managed automatically between peered networks. Currently this field should always be true since Google Compute Engine will automatically create and manage subnetwork routes between two networks when peering state is ACTIVE.
  final pulumi.Input<bool> exchangeSubnetRoutes;
  /// Whether to export the custom routes to peer network. The default value is false.
  final pulumi.Input<bool> exportCustomRoutes;
  /// Whether subnet routes with public IP range are exported. The default value is true, all subnet routes are exported. IPv4 special-use ranges are always exported to peers and are not controlled by this field.
  final pulumi.Input<bool> exportSubnetRoutesWithPublicIp;
  /// Whether to import the custom routes from peer network. The default value is false.
  final pulumi.Input<bool> importCustomRoutes;
  /// Whether subnet routes with public IP range are imported. The default value is false. IPv4 special-use ranges are always imported from peers and are not controlled by this field.
  final pulumi.Input<bool> importSubnetRoutesWithPublicIp;
  /// Name of this peering. Provided by the client when the peering is created. The name must comply with RFC1035. Specifically, the name must be 1-63 characters long and match regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`. The first character must be a lowercase letter, and all the following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String> name;
  /// The URL of the peer network. It can be either full URL or partial URL. The peer network may belong to a different project. If the partial URL does not contain project, it is assumed that the peer network is in the same project as the current network.
  final pulumi.Input<String> network;
  /// Maximum Transmission Unit in bytes.
  final pulumi.Input<int> peerMtu;
  /// Which IP version(s) of traffic and routes are allowed to be imported or exported between peer networks. The default value is IPV4_ONLY.
  final pulumi.Input<String> stackType;
  /// State for the peering, either `ACTIVE` or `INACTIVE`. The peering is `ACTIVE` when there's a matching configuration in the peer network.
  final pulumi.Input<String> state;
  /// Details about the current state of the peering.
  final pulumi.Input<String> stateDetails;

  /// Creates a new [NetworkPeeringResponseComputeBeta].
  /// [autoCreateRoutes] This field will be deprecated soon. Use the exchange_subnet_routes field instead. Indicates whether full mesh connectivity is created and managed automatically between peered networks. Currently this field should always be true since Google Compute Engine will automatically create and manage subnetwork routes between two networks when peering state is ACTIVE.
  /// [exchangeSubnetRoutes] Indicates whether full mesh connectivity is created and managed automatically between peered networks. Currently this field should always be true since Google Compute Engine will automatically create and manage subnetwork routes between two networks when peering state is ACTIVE.
  /// [exportCustomRoutes] Whether to export the custom routes to peer network. The default value is false.
  /// [exportSubnetRoutesWithPublicIp] Whether subnet routes with public IP range are exported. The default value is true, all subnet routes are exported. IPv4 special-use ranges are always exported to peers and are not controlled by this field.
  /// [importCustomRoutes] Whether to import the custom routes from peer network. The default value is false.
  /// [importSubnetRoutesWithPublicIp] Whether subnet routes with public IP range are imported. The default value is false. IPv4 special-use ranges are always imported from peers and are not controlled by this field.
  /// [name] Name of this peering. Provided by the client when the peering is created. The name must comply with RFC1035. Specifically, the name must be 1-63 characters long and match regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`. The first character must be a lowercase letter, and all the following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [network] The URL of the peer network. It can be either full URL or partial URL. The peer network may belong to a different project. If the partial URL does not contain project, it is assumed that the peer network is in the same project as the current network.
  /// [peerMtu] Maximum Transmission Unit in bytes.
  /// [stackType] Which IP version(s) of traffic and routes are allowed to be imported or exported between peer networks. The default value is IPV4_ONLY.
  /// [state] State for the peering, either `ACTIVE` or `INACTIVE`. The peering is `ACTIVE` when there's a matching configuration in the peer network.
  /// [stateDetails] Details about the current state of the peering.
  const NetworkPeeringResponseComputeBeta({
    required this.autoCreateRoutes,
    required this.exchangeSubnetRoutes,
    required this.exportCustomRoutes,
    required this.exportSubnetRoutesWithPublicIp,
    required this.importCustomRoutes,
    required this.importSubnetRoutesWithPublicIp,
    required this.name,
    required this.network,
    required this.peerMtu,
    required this.stackType,
    required this.state,
    required this.stateDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoCreateRoutes': autoCreateRoutes,
      'exchangeSubnetRoutes': exchangeSubnetRoutes,
      'exportCustomRoutes': exportCustomRoutes,
      'exportSubnetRoutesWithPublicIp': exportSubnetRoutesWithPublicIp,
      'importCustomRoutes': importCustomRoutes,
      'importSubnetRoutesWithPublicIp': importSubnetRoutesWithPublicIp,
      'name': name,
      'network': network,
      'peerMtu': peerMtu,
      'stackType': stackType,
      'state': state,
      'stateDetails': stateDetails,
    };
  }

  factory NetworkPeeringResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return NetworkPeeringResponseComputeBeta(
      autoCreateRoutes: pulumi.Input.fromValue(map['autoCreateRoutes'] as bool),
      exchangeSubnetRoutes: pulumi.Input.fromValue(map['exchangeSubnetRoutes'] as bool),
      exportCustomRoutes: pulumi.Input.fromValue(map['exportCustomRoutes'] as bool),
      exportSubnetRoutesWithPublicIp: pulumi.Input.fromValue(map['exportSubnetRoutesWithPublicIp'] as bool),
      importCustomRoutes: pulumi.Input.fromValue(map['importCustomRoutes'] as bool),
      importSubnetRoutesWithPublicIp: pulumi.Input.fromValue(map['importSubnetRoutesWithPublicIp'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      network: pulumi.Input.fromValue(map['network'] as String),
      peerMtu: pulumi.Input.fromValue(map['peerMtu'] as int),
      stackType: pulumi.Input.fromValue(map['stackType'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      stateDetails: pulumi.Input.fromValue(map['stateDetails'] as String),
    );
  }
}

