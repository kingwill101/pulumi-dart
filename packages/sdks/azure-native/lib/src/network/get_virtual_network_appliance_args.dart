// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_virtual_network_appliance_args_doc}
/// Arguments for getVirtualNetworkAppliance.
/// {@endtemplate}
/// {@macro pulumi_network_get_virtual_network_appliance_args_doc}
class GetVirtualNetworkApplianceArgs {
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the virtual network appliance.
  final pulumi.Input<String> virtualNetworkApplianceName;

  /// Creates a new [GetVirtualNetworkApplianceArgs].
  /// [resourceGroupName] The name of the resource group.
  /// [virtualNetworkApplianceName] The name of the virtual network appliance.
  GetVirtualNetworkApplianceArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> virtualNetworkApplianceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualNetworkApplianceName = pulumi.Input.asInput<String>(virtualNetworkApplianceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'virtualNetworkApplianceName': virtualNetworkApplianceName,
    };
  }

  factory GetVirtualNetworkApplianceArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkApplianceArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      virtualNetworkApplianceName: pulumi.Output.create<String>(map['virtualNetworkApplianceName'] as String),
    );
  }
}

