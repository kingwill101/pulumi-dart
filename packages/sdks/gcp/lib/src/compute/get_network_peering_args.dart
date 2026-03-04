// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_network_peering_get_network_peering_args_doc}
/// Arguments for getNetworkPeering.
/// {@endtemplate}
/// {@macro pulumi_compute_get_network_peering_get_network_peering_args_doc}
class GetNetworkPeeringArgs {
  /// Name of the peering.
  final pulumi.Input<String> name;

  /// The primary network of the peering.
  final pulumi.Input<String> network;

  /// Creates a new [GetNetworkPeeringArgs].
  /// [name] Name of the peering.
  /// [network] The primary network of the peering.
  GetNetworkPeeringArgs({required this.name, required this.network});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'network': network};
  }

  factory GetNetworkPeeringArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkPeeringArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      network: pulumi.Input.fromValue(map['network'] as String),
    );
  }
}
