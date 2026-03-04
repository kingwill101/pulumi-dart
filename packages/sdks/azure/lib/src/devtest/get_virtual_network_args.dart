// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devtest_get_virtual_network_get_virtual_network_args_doc}
/// Arguments for getVirtualNetwork.
/// {@endtemplate}
/// {@macro pulumi_devtest_get_virtual_network_get_virtual_network_args_doc}
class GetVirtualNetworkArgs {
  /// Specifies the name of the Dev Test Lab.
  final pulumi.Input<String> labName;

  /// Specifies the name of the Virtual Network.
  final pulumi.Input<String> name;

  /// Specifies the name of the resource group that contains the Virtual Network.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetVirtualNetworkArgs].
  /// [labName] Specifies the name of the Dev Test Lab.
  /// [name] Specifies the name of the Virtual Network.
  /// [resourceGroupName] Specifies the name of the resource group that contains the Virtual Network.
  GetVirtualNetworkArgs({
    required this.labName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labName': labName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetVirtualNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkArgs(
      labName: pulumi.Input.fromValue(map['labName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
