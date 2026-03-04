// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_virtual_router_peering_args_doc}
/// Arguments for getVirtualRouterPeering.
/// {@endtemplate}
/// {@macro pulumi_network_get_virtual_router_peering_args_doc}
class GetVirtualRouterPeeringArgs {
  /// The name of the Virtual Router Peering.
  final pulumi.Input<String> peeringName;

  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the Virtual Router.
  final pulumi.Input<String> virtualRouterName;

  /// Creates a new [GetVirtualRouterPeeringArgs].
  /// [peeringName] The name of the Virtual Router Peering.
  /// [resourceGroupName] The name of the resource group.
  /// [virtualRouterName] The name of the Virtual Router.
  GetVirtualRouterPeeringArgs({
    required this.peeringName,
    required this.resourceGroupName,
    required this.virtualRouterName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peeringName': peeringName,
      'resourceGroupName': resourceGroupName,
      'virtualRouterName': virtualRouterName,
    };
  }

  factory GetVirtualRouterPeeringArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualRouterPeeringArgs(
      peeringName: pulumi.Input.fromValue(map['peeringName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      virtualRouterName: pulumi.Input.fromValue(
        map['virtualRouterName'] as String,
      ),
    );
  }
}
