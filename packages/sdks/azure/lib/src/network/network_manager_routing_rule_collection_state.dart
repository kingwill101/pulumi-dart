// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkManagerRoutingRuleCollection resources.
class NetworkManagerRoutingRuleCollectionState {
  /// Whether to enable the BGP route propagation. Defaults to `false`.
  final pulumi.Input<bool>? bgpRoutePropagationEnabled;
  /// The description of the Network Manager Routing Rule Collection.
  final pulumi.Input<String>? description;
  /// The name which should be used for this Network Manager Routing Rule Collection. Changing this forces a new Network Manager Routing Rule Collection to be created.
  final pulumi.Input<String>? name;
  /// A list of Network Group IDs which this Network Manager Routing Rule Collection applies to.
  final pulumi.Input<List<String>>? networkGroupIds;
  /// The ID of the Network Manager Routing Configuration. Changing this forces a new Network Manager Routing Rule Collection to be created.
  final pulumi.Input<String>? routingConfigurationId;

  /// Creates a new [NetworkManagerRoutingRuleCollectionState].
  /// [bgpRoutePropagationEnabled] Whether to enable the BGP route propagation. Defaults to `false`.
  /// [description] The description of the Network Manager Routing Rule Collection.
  /// [name] The name which should be used for this Network Manager Routing Rule Collection. Changing this forces a new Network Manager Routing Rule Collection to be created.
  /// [networkGroupIds] A list of Network Group IDs which this Network Manager Routing Rule Collection applies to.
  /// [routingConfigurationId] The ID of the Network Manager Routing Configuration. Changing this forces a new Network Manager Routing Rule Collection to be created.
  NetworkManagerRoutingRuleCollectionState({
    pulumi.Output<bool>? bgpRoutePropagationEnabled,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? networkGroupIds,
    pulumi.Output<String>? routingConfigurationId,
  }) :
      bgpRoutePropagationEnabled = pulumi.Input.asOptionalInput<bool>(bgpRoutePropagationEnabled),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkGroupIds = pulumi.Input.asOptionalInput<List<String>>(networkGroupIds),
      routingConfigurationId = pulumi.Input.asOptionalInput<String>(routingConfigurationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpRoutePropagationEnabled': ?bgpRoutePropagationEnabled,
      'description': ?description,
      'name': ?name,
      'networkGroupIds': ?networkGroupIds,
      'routingConfigurationId': ?routingConfigurationId,
    };
  }

  factory NetworkManagerRoutingRuleCollectionState.fromMap(Map<String, dynamic> map) {
    return NetworkManagerRoutingRuleCollectionState(
      bgpRoutePropagationEnabled: map['bgpRoutePropagationEnabled'] == null ? null : pulumi.Output.create<bool>(map['bgpRoutePropagationEnabled'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkGroupIds: map['networkGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['networkGroupIds'] as List).cast<String>()),
      routingConfigurationId: map['routingConfigurationId'] == null ? null : pulumi.Output.create<String>(map['routingConfigurationId'] as String),
    );
  }
}

