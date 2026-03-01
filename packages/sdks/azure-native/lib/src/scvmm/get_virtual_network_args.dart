// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_scvmm_get_virtual_network_args_doc}
/// Arguments for getVirtualNetwork.
/// {@endtemplate}
/// {@macro pulumi_scvmm_get_virtual_network_args_doc}
class GetVirtualNetworkArgs {
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the VirtualNetwork.
  final pulumi.Input<String> virtualNetworkName;

  /// Creates a new [GetVirtualNetworkArgs].
  /// [resourceGroupName] The name of the resource group.
  /// [virtualNetworkName] Name of the VirtualNetwork.
  GetVirtualNetworkArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> virtualNetworkName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualNetworkName = pulumi.Input.asInput<String>(virtualNetworkName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'virtualNetworkName': virtualNetworkName,
    };
  }

  factory GetVirtualNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      virtualNetworkName: pulumi.Output.create<String>(map['virtualNetworkName'] as String),
    );
  }
}

