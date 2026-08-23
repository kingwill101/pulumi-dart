// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_virtual_wan_get_virtual_wan_args_doc}
/// Arguments for getVirtualWan.
/// {@endtemplate}
/// {@macro pulumi_network_get_virtual_wan_get_virtual_wan_args_doc}
class GetVirtualWanArgs {
  /// The name of this Virtual Wan.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Virtual Wan exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetVirtualWanArgs].
  /// [name] The name of this Virtual Wan.
  /// [resourceGroupName] The name of the Resource Group where the Virtual Wan exists.
  const GetVirtualWanArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetVirtualWanArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualWanArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
