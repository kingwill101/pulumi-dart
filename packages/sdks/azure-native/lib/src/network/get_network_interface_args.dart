// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_network_interface_args_doc}
/// Arguments for getNetworkInterface.
/// {@endtemplate}
/// {@macro pulumi_network_get_network_interface_args_doc}
class GetNetworkInterfaceArgs {
  /// Expands referenced resources.
  final pulumi.Input<String>? expand;
  /// The name of the network interface.
  final pulumi.Input<String> networkInterfaceName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkInterfaceArgs].
  /// [expand] Expands referenced resources.
  /// [networkInterfaceName] The name of the network interface.
  /// [resourceGroupName] The name of the resource group.
  GetNetworkInterfaceArgs({
    this.expand,
    required this.networkInterfaceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'networkInterfaceName': networkInterfaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkInterfaceArgs(
      expand: map['expand'] == null ? null : (map['expand']! as String).input(),
      networkInterfaceName: (map['networkInterfaceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

