// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_network_virtual_appliance_connection_args_doc}
/// Arguments for getNetworkVirtualApplianceConnection.
/// {@endtemplate}
/// {@macro pulumi_network_get_network_virtual_appliance_connection_args_doc}
class GetNetworkVirtualApplianceConnectionArgs {
  /// The name of the NVA connection.
  final pulumi.Input<String> connectionName;
  /// The name of the Network Virtual Appliance.
  final pulumi.Input<String> networkVirtualApplianceName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkVirtualApplianceConnectionArgs].
  /// [connectionName] The name of the NVA connection.
  /// [networkVirtualApplianceName] The name of the Network Virtual Appliance.
  /// [resourceGroupName] The name of the resource group.
  GetNetworkVirtualApplianceConnectionArgs({
    required pulumi.Output<String> connectionName,
    required pulumi.Output<String> networkVirtualApplianceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      connectionName = pulumi.Input.asInput<String>(connectionName),
      networkVirtualApplianceName = pulumi.Input.asInput<String>(networkVirtualApplianceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': connectionName,
      'networkVirtualApplianceName': networkVirtualApplianceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkVirtualApplianceConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkVirtualApplianceConnectionArgs(
      connectionName: pulumi.Output.create<String>(map['connectionName'] as String),
      networkVirtualApplianceName: pulumi.Output.create<String>(map['networkVirtualApplianceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

