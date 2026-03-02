// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_network_manager_routing_rule_collection_network_manager_routing_rule_collection_args_doc}
/// The set of arguments for NetworkManagerRoutingRuleCollection.
/// {@endtemplate}
/// {@macro pulumi_network_network_manager_routing_rule_collection_network_manager_routing_rule_collection_args_doc}
class NetworkManagerRoutingRuleCollectionArgs {
  /// Whether to enable the BGP route propagation. Defaults to `false`.
  final pulumi.Input<bool>? bgpRoutePropagationEnabled;
  /// The description of the Network Manager Routing Rule Collection.
  final pulumi.Input<String>? description;
  /// The name which should be used for this Network Manager Routing Rule Collection. Changing this forces a new Network Manager Routing Rule Collection to be created.
  final pulumi.Input<String>? name;
  /// A list of Network Group IDs which this Network Manager Routing Rule Collection applies to.
  final pulumi.Input<List<String>> networkGroupIds;
  /// The ID of the Network Manager Routing Configuration. Changing this forces a new Network Manager Routing Rule Collection to be created.
  final pulumi.Input<String> routingConfigurationId;

  /// Creates a new [NetworkManagerRoutingRuleCollectionArgs].
  /// [bgpRoutePropagationEnabled] Whether to enable the BGP route propagation. Defaults to `false`.
  /// [description] The description of the Network Manager Routing Rule Collection.
  /// [name] The name which should be used for this Network Manager Routing Rule Collection. Changing this forces a new Network Manager Routing Rule Collection to be created.
  /// [networkGroupIds] A list of Network Group IDs which this Network Manager Routing Rule Collection applies to.
  /// [routingConfigurationId] The ID of the Network Manager Routing Configuration. Changing this forces a new Network Manager Routing Rule Collection to be created.
  NetworkManagerRoutingRuleCollectionArgs({
    this.bgpRoutePropagationEnabled,
    this.description,
    this.name,
    required this.networkGroupIds,
    required this.routingConfigurationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpRoutePropagationEnabled': ?bgpRoutePropagationEnabled,
      'description': ?description,
      'name': ?name,
      'networkGroupIds': networkGroupIds,
      'routingConfigurationId': routingConfigurationId,
    };
  }

  factory NetworkManagerRoutingRuleCollectionArgs.fromMap(Map<String, dynamic> map) {
    return NetworkManagerRoutingRuleCollectionArgs(
      bgpRoutePropagationEnabled: map['bgpRoutePropagationEnabled'] == null ? null : (map['bgpRoutePropagationEnabled'] as bool).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkGroupIds: ((map['networkGroupIds'] as List).cast<String>()).input(),
      routingConfigurationId: (map['routingConfigurationId'] as String).input(),
    );
  }
}

