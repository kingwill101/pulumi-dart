// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_network_manager_routing_configuration_args_doc}
/// The set of arguments for NetworkManagerRoutingConfiguration.
/// {@endtemplate}
/// {@macro pulumi_network_network_manager_routing_configuration_args_doc}
class NetworkManagerRoutingConfigurationArgs {
  /// The name of the network manager Routing Configuration.
  final pulumi.Input<String>? configurationName;
  /// A description of the routing configuration.
  final pulumi.Input<String>? description;
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [NetworkManagerRoutingConfigurationArgs].
  /// [configurationName] The name of the network manager Routing Configuration.
  /// [description] A description of the routing configuration.
  /// [networkManagerName] The name of the network manager.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  NetworkManagerRoutingConfigurationArgs({
    this.configurationName,
    this.description,
    required this.networkManagerName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationName': ?configurationName,
      'description': ?description,
      'networkManagerName': networkManagerName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory NetworkManagerRoutingConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return NetworkManagerRoutingConfigurationArgs(
      configurationName: (() { final guardedValue = map['configurationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkManagerName: pulumi.Input.fromValue(map['networkManagerName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

