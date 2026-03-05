// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_virtual_network_peering_get_virtual_network_peering_args_doc}
/// Arguments for getVirtualNetworkPeering.
/// {@endtemplate}
/// {@macro pulumi_network_get_virtual_network_peering_get_virtual_network_peering_args_doc}
class GetVirtualNetworkPeeringArgs {
  /// The name of this virtual network peering.
  final pulumi.Input<String> name;
  /// The resource ID of the virtual network.
  final pulumi.Input<String> virtualNetworkId;

  /// Creates a new [GetVirtualNetworkPeeringArgs].
  /// [name] The name of this virtual network peering.
  /// [virtualNetworkId] The resource ID of the virtual network.
  GetVirtualNetworkPeeringArgs({
    required this.name,
    required this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'virtualNetworkId': virtualNetworkId,
    };
  }

  factory GetVirtualNetworkPeeringArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkPeeringArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      virtualNetworkId: pulumi.Input.fromValue(map['virtualNetworkId'] as String),
    );
  }
}

