// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_virtual_network_peering_args_doc}
/// Arguments for getVirtualNetworkPeering.
/// {@endtemplate}
/// {@macro pulumi_network_get_virtual_network_peering_args_doc}
class GetVirtualNetworkPeeringArgs {
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the virtual network.
  final pulumi.Input<String> virtualNetworkName;
  /// The name of the virtual network peering.
  final pulumi.Input<String> virtualNetworkPeeringName;

  /// Creates a new [GetVirtualNetworkPeeringArgs].
  /// [resourceGroupName] The name of the resource group.
  /// [virtualNetworkName] The name of the virtual network.
  /// [virtualNetworkPeeringName] The name of the virtual network peering.
  GetVirtualNetworkPeeringArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> virtualNetworkName,
    required pulumi.Output<String> virtualNetworkPeeringName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualNetworkName = pulumi.Input.asInput<String>(virtualNetworkName),
      virtualNetworkPeeringName = pulumi.Input.asInput<String>(virtualNetworkPeeringName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'virtualNetworkName': virtualNetworkName,
      'virtualNetworkPeeringName': virtualNetworkPeeringName,
    };
  }

  factory GetVirtualNetworkPeeringArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkPeeringArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      virtualNetworkName: pulumi.Output.create<String>(map['virtualNetworkName'] as String),
      virtualNetworkPeeringName: pulumi.Output.create<String>(map['virtualNetworkPeeringName'] as String),
    );
  }
}

