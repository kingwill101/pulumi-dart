// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_virtual_hub_args_doc}
/// Arguments for getVirtualHub.
/// {@endtemplate}
/// {@macro pulumi_network_get_virtual_hub_args_doc}
class GetVirtualHubArgs {
  /// The resource group name of the VirtualHub.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the VirtualHub.
  final pulumi.Input<String> virtualHubName;

  /// Creates a new [GetVirtualHubArgs].
  /// [resourceGroupName] The resource group name of the VirtualHub.
  /// [virtualHubName] The name of the VirtualHub.
  GetVirtualHubArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> virtualHubName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualHubName = pulumi.Input.asInput<String>(virtualHubName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'virtualHubName': virtualHubName,
    };
  }

  factory GetVirtualHubArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualHubArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      virtualHubName: pulumi.Output.create<String>(map['virtualHubName'] as String),
    );
  }
}

