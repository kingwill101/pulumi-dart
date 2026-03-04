// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_express_route_cross_connection_peering_args_doc}
/// Arguments for getExpressRouteCrossConnectionPeering.
/// {@endtemplate}
/// {@macro pulumi_network_get_express_route_cross_connection_peering_args_doc}
class GetExpressRouteCrossConnectionPeeringArgs {
  /// The name of the ExpressRouteCrossConnection.
  final pulumi.Input<String> crossConnectionName;

  /// The name of the peering.
  final pulumi.Input<String> peeringName;

  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetExpressRouteCrossConnectionPeeringArgs].
  /// [crossConnectionName] The name of the ExpressRouteCrossConnection.
  /// [peeringName] The name of the peering.
  /// [resourceGroupName] The name of the resource group.
  GetExpressRouteCrossConnectionPeeringArgs({
    required this.crossConnectionName,
    required this.peeringName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossConnectionName': crossConnectionName,
      'peeringName': peeringName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetExpressRouteCrossConnectionPeeringArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetExpressRouteCrossConnectionPeeringArgs(
      crossConnectionName: pulumi.Input.fromValue(
        map['crossConnectionName'] as String,
      ),
      peeringName: pulumi.Input.fromValue(map['peeringName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
