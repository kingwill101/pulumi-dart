// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_network_manager_routing_configuration_args_doc}
/// Arguments for getNetworkManagerRoutingConfiguration.
/// {@endtemplate}
/// {@macro pulumi_network_get_network_manager_routing_configuration_args_doc}
class GetNetworkManagerRoutingConfigurationArgs {
  /// The name of the network manager Routing Configuration.
  final pulumi.Input<String> configurationName;
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkManagerRoutingConfigurationArgs].
  /// [configurationName] The name of the network manager Routing Configuration.
  /// [networkManagerName] The name of the network manager.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetNetworkManagerRoutingConfigurationArgs({
    required pulumi.Output<String> configurationName,
    required pulumi.Output<String> networkManagerName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      configurationName = pulumi.Input.asInput<String>(configurationName),
      networkManagerName = pulumi.Input.asInput<String>(networkManagerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationName': configurationName,
      'networkManagerName': networkManagerName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkManagerRoutingConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkManagerRoutingConfigurationArgs(
      configurationName: pulumi.Output.create<String>(map['configurationName'] as String),
      networkManagerName: pulumi.Output.create<String>(map['networkManagerName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

