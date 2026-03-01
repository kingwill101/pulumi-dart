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
    required pulumi.Output<String> name,
    required pulumi.Output<String> virtualNetworkId,
  }) :
      name = pulumi.Input.asInput<String>(name),
      virtualNetworkId = pulumi.Input.asInput<String>(virtualNetworkId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'virtualNetworkId': virtualNetworkId,
    };
  }

  factory GetVirtualNetworkPeeringArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkPeeringArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      virtualNetworkId: pulumi.Output.create<String>(map['virtualNetworkId'] as String),
    );
  }
}

