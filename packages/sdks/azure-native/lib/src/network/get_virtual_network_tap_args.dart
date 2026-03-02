// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_virtual_network_tap_args_doc}
/// Arguments for getVirtualNetworkTap.
/// {@endtemplate}
/// {@macro pulumi_network_get_virtual_network_tap_args_doc}
class GetVirtualNetworkTapArgs {
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of virtual network tap.
  final pulumi.Input<String> tapName;

  /// Creates a new [GetVirtualNetworkTapArgs].
  /// [resourceGroupName] The name of the resource group.
  /// [tapName] The name of virtual network tap.
  GetVirtualNetworkTapArgs({
    required this.resourceGroupName,
    required this.tapName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'tapName': tapName,
    };
  }

  factory GetVirtualNetworkTapArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkTapArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tapName: (map['tapName'] as String).input(),
    );
  }
}

