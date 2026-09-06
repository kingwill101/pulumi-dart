// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_list_effective_virtual_network_by_network_group_args_doc}
/// Arguments for listEffectiveVirtualNetworkByNetworkGroup.
/// {@endtemplate}
/// {@macro pulumi_network_list_effective_virtual_network_by_network_group_args_doc}
class ListEffectiveVirtualNetworkByNetworkGroupArgs {
  /// The name of the network group to get.
  final pulumi.Input<String> networkGroupName;
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// When present, the value can be passed to a subsequent query call (together with the same query and scopes used in the current request) to retrieve the next page of data.
  final pulumi.Input<String?>? skipToken;

  /// Creates a new [ListEffectiveVirtualNetworkByNetworkGroupArgs].
  /// [networkGroupName] The name of the network group to get.
  /// [networkManagerName] The name of the network manager.
  /// [resourceGroupName] The name of the resource group.
  /// [skipToken] When present, the value can be passed to a subsequent query call (together with the same query and scopes used in the current request) to retrieve the next page of data.
  const ListEffectiveVirtualNetworkByNetworkGroupArgs({
    required this.networkGroupName,
    required this.networkManagerName,
    required this.resourceGroupName,
    this.skipToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkGroupName': networkGroupName,
      'networkManagerName': networkManagerName,
      'resourceGroupName': resourceGroupName,
      'skipToken': ?skipToken,
    };
  }

  factory ListEffectiveVirtualNetworkByNetworkGroupArgs.fromMap(Map<String, dynamic> map) {
    return ListEffectiveVirtualNetworkByNetworkGroupArgs(
      networkGroupName: pulumi.Input.fromValue(map['networkGroupName'] as String),
      networkManagerName: pulumi.Input.fromValue(map['networkManagerName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      skipToken: (() { final guardedValue = map['skipToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
