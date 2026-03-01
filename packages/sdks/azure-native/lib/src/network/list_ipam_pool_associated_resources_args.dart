// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_list_ipam_pool_associated_resources_args_doc}
/// Arguments for listIpamPoolAssociatedResources.
/// {@endtemplate}
/// {@macro pulumi_network_list_ipam_pool_associated_resources_args_doc}
class ListIpamPoolAssociatedResourcesArgs {
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// Pool resource name.
  final pulumi.Input<String> poolName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListIpamPoolAssociatedResourcesArgs].
  /// [networkManagerName] The name of the network manager.
  /// [poolName] Pool resource name.
  /// [resourceGroupName] The name of the resource group.
  ListIpamPoolAssociatedResourcesArgs({
    required pulumi.Output<String> networkManagerName,
    required pulumi.Output<String> poolName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      networkManagerName = pulumi.Input.asInput<String>(networkManagerName),
      poolName = pulumi.Input.asInput<String>(poolName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkManagerName': networkManagerName,
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListIpamPoolAssociatedResourcesArgs.fromMap(Map<String, dynamic> map) {
    return ListIpamPoolAssociatedResourcesArgs(
      networkManagerName: pulumi.Output.create<String>(map['networkManagerName'] as String),
      poolName: pulumi.Output.create<String>(map['poolName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

