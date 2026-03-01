// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicefabricmesh_get_network_args_doc}
/// Arguments for getNetwork.
/// {@endtemplate}
/// {@macro pulumi_servicefabricmesh_get_network_args_doc}
class GetNetworkArgs {
  /// The identity of the network.
  final pulumi.Input<String> networkResourceName;
  /// Azure resource group name
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkArgs].
  /// [networkResourceName] The identity of the network.
  /// [resourceGroupName] Azure resource group name
  GetNetworkArgs({
    required pulumi.Output<String> networkResourceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      networkResourceName = pulumi.Input.asInput<String>(networkResourceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkResourceName': networkResourceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkArgs(
      networkResourceName: pulumi.Output.create<String>(map['networkResourceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

