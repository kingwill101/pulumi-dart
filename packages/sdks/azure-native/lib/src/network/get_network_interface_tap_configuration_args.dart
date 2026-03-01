// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_network_interface_tap_configuration_args_doc}
/// Arguments for getNetworkInterfaceTapConfiguration.
/// {@endtemplate}
/// {@macro pulumi_network_get_network_interface_tap_configuration_args_doc}
class GetNetworkInterfaceTapConfigurationArgs {
  /// The name of the network interface.
  final pulumi.Input<String> networkInterfaceName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the tap configuration.
  final pulumi.Input<String> tapConfigurationName;

  /// Creates a new [GetNetworkInterfaceTapConfigurationArgs].
  /// [networkInterfaceName] The name of the network interface.
  /// [resourceGroupName] The name of the resource group.
  /// [tapConfigurationName] The name of the tap configuration.
  GetNetworkInterfaceTapConfigurationArgs({
    required pulumi.Output<String> networkInterfaceName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> tapConfigurationName,
  }) :
      networkInterfaceName = pulumi.Input.asInput<String>(networkInterfaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tapConfigurationName = pulumi.Input.asInput<String>(tapConfigurationName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkInterfaceName': networkInterfaceName,
      'resourceGroupName': resourceGroupName,
      'tapConfigurationName': tapConfigurationName,
    };
  }

  factory GetNetworkInterfaceTapConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkInterfaceTapConfigurationArgs(
      networkInterfaceName: pulumi.Output.create<String>(map['networkInterfaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tapConfigurationName: pulumi.Output.create<String>(map['tapConfigurationName'] as String),
    );
  }
}

