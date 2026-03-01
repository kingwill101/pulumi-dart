// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkManagerRoutingConfiguration resources.
class NetworkManagerRoutingConfigurationState {
  /// The description of the Network Manager Routing Configuration.
  final pulumi.Input<String>? description;
  /// The name which should be used for this Network Manager Routing Configuration. Changing this forces a new Network Manager Routing Configuration to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Network Manager. Changing this forces a new Network Manager Routing Configuration to be created.
  final pulumi.Input<String>? networkManagerId;
  /// The route table usage mode for the Network Manager Routing Configuration. Possible values are `ManagedOnly` and `UseExisting`. Defaults to `ManagedOnly`.
  final pulumi.Input<String>? routeTableUsageMode;

  /// Creates a new [NetworkManagerRoutingConfigurationState].
  /// [description] The description of the Network Manager Routing Configuration.
  /// [name] The name which should be used for this Network Manager Routing Configuration. Changing this forces a new Network Manager Routing Configuration to be created.
  /// [networkManagerId] The ID of the Network Manager. Changing this forces a new Network Manager Routing Configuration to be created.
  /// [routeTableUsageMode] The route table usage mode for the Network Manager Routing Configuration. Possible values are `ManagedOnly` and `UseExisting`. Defaults to `ManagedOnly`.
  NetworkManagerRoutingConfigurationState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkManagerId,
    pulumi.Output<String>? routeTableUsageMode,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkManagerId = pulumi.Input.asOptionalInput<String>(networkManagerId),
      routeTableUsageMode = pulumi.Input.asOptionalInput<String>(routeTableUsageMode);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'networkManagerId': ?networkManagerId,
      'routeTableUsageMode': ?routeTableUsageMode,
    };
  }

  factory NetworkManagerRoutingConfigurationState.fromMap(Map<String, dynamic> map) {
    return NetworkManagerRoutingConfigurationState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkManagerId: map['networkManagerId'] == null ? null : pulumi.Output.create<String>(map['networkManagerId'] as String),
      routeTableUsageMode: map['routeTableUsageMode'] == null ? null : pulumi.Output.create<String>(map['routeTableUsageMode'] as String),
    );
  }
}

