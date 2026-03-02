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
    required this.networkResourceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkResourceName': networkResourceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkArgs(
      networkResourceName: (map['networkResourceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

