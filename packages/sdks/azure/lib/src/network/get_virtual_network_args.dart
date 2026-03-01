// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_virtual_network_get_virtual_network_args_doc}
/// Arguments for getVirtualNetwork.
/// {@endtemplate}
/// {@macro pulumi_network_get_virtual_network_get_virtual_network_args_doc}
class GetVirtualNetworkArgs {
  /// Specifies the name of the Virtual Network.
  final pulumi.Input<String> name;
  /// Specifies the name of the resource group the Virtual Network is located in.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetVirtualNetworkArgs].
  /// [name] Specifies the name of the Virtual Network.
  /// [resourceGroupName] Specifies the name of the resource group the Virtual Network is located in.
  GetVirtualNetworkArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetVirtualNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

