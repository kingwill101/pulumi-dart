// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_network_virtual_appliance_args_doc}
/// Arguments for getNetworkVirtualAppliance.
/// {@endtemplate}
/// {@macro pulumi_network_get_network_virtual_appliance_args_doc}
class GetNetworkVirtualApplianceArgs {
  /// Expands referenced resources.
  final pulumi.Input<String>? expand;
  /// The name of Network Virtual Appliance.
  final pulumi.Input<String> networkVirtualApplianceName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkVirtualApplianceArgs].
  /// [expand] Expands referenced resources.
  /// [networkVirtualApplianceName] The name of Network Virtual Appliance.
  /// [resourceGroupName] The name of the resource group.
  GetNetworkVirtualApplianceArgs({
    pulumi.Output<String>? expand,
    required pulumi.Output<String> networkVirtualApplianceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      networkVirtualApplianceName = pulumi.Input.asInput<String>(networkVirtualApplianceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'networkVirtualApplianceName': networkVirtualApplianceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkVirtualApplianceArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkVirtualApplianceArgs(
      expand: map['expand'] == null ? null : pulumi.Output.create<String>(map['expand'] as String),
      networkVirtualApplianceName: pulumi.Output.create<String>(map['networkVirtualApplianceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

