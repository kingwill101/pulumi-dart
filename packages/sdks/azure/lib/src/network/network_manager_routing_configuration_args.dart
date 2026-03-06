// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_network_manager_routing_configuration_network_manager_routing_configuration_args_doc}
/// The set of arguments for NetworkManagerRoutingConfiguration.
/// {@endtemplate}
/// {@macro pulumi_network_network_manager_routing_configuration_network_manager_routing_configuration_args_doc}
class NetworkManagerRoutingConfigurationArgs {
  /// The description of the Network Manager Routing Configuration.
  final pulumi.Input<String>? description;
  /// The name which should be used for this Network Manager Routing Configuration. Changing this forces a new Network Manager Routing Configuration to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Network Manager. Changing this forces a new Network Manager Routing Configuration to be created.
  final pulumi.Input<String> networkManagerId;
  /// The route table usage mode for the Network Manager Routing Configuration. Possible values are `ManagedOnly` and `UseExisting`. Defaults to `ManagedOnly`.
  final pulumi.Input<String>? routeTableUsageMode;

  /// Creates a new [NetworkManagerRoutingConfigurationArgs].
  /// [description] The description of the Network Manager Routing Configuration.
  /// [name] The name which should be used for this Network Manager Routing Configuration. Changing this forces a new Network Manager Routing Configuration to be created.
  /// [networkManagerId] The ID of the Network Manager. Changing this forces a new Network Manager Routing Configuration to be created.
  /// [routeTableUsageMode] The route table usage mode for the Network Manager Routing Configuration. Possible values are `ManagedOnly` and `UseExisting`. Defaults to `ManagedOnly`.
  const NetworkManagerRoutingConfigurationArgs({
    this.description,
    this.name,
    required this.networkManagerId,
    this.routeTableUsageMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'networkManagerId': networkManagerId,
      'routeTableUsageMode': ?routeTableUsageMode,
    };
  }

  factory NetworkManagerRoutingConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return NetworkManagerRoutingConfigurationArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkManagerId: pulumi.Input.fromValue(map['networkManagerId'] as String),
      routeTableUsageMode: (() { final guardedValue = map['routeTableUsageMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

