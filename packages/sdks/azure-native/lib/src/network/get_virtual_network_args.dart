// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_virtual_network_args_doc}
/// Arguments for getVirtualNetwork.
/// {@endtemplate}
/// {@macro pulumi_network_get_virtual_network_args_doc}
class GetVirtualNetworkArgs {
  /// Expands referenced resources.
  final pulumi.Input<String>? expand;

  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the virtual network.
  final pulumi.Input<String> virtualNetworkName;

  /// Creates a new [GetVirtualNetworkArgs].
  /// [expand] Expands referenced resources.
  /// [resourceGroupName] The name of the resource group.
  /// [virtualNetworkName] The name of the virtual network.
  GetVirtualNetworkArgs({
    this.expand,
    required this.resourceGroupName,
    required this.virtualNetworkName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'resourceGroupName': resourceGroupName,
      'virtualNetworkName': virtualNetworkName,
    };
  }

  factory GetVirtualNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkArgs(
      expand: (() {
        final guardedValue = map['expand'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      virtualNetworkName: pulumi.Input.fromValue(
        map['virtualNetworkName'] as String,
      ),
    );
  }
}
