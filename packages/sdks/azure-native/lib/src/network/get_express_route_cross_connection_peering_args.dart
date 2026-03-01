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
    required pulumi.Output<String> crossConnectionName,
    required pulumi.Output<String> peeringName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      crossConnectionName = pulumi.Input.asInput<String>(crossConnectionName),
      peeringName = pulumi.Input.asInput<String>(peeringName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossConnectionName': crossConnectionName,
      'peeringName': peeringName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetExpressRouteCrossConnectionPeeringArgs.fromMap(Map<String, dynamic> map) {
    return GetExpressRouteCrossConnectionPeeringArgs(
      crossConnectionName: pulumi.Output.create<String>(map['crossConnectionName'] as String),
      peeringName: pulumi.Output.create<String>(map['peeringName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

