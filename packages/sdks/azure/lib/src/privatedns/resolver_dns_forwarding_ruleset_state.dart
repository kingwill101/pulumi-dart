// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResolverDnsForwardingRuleset resources.
class ResolverDnsForwardingRulesetState {
  /// Specifies the Azure Region where the Private DNS Resolver Dns Forwarding Ruleset should exist. Changing this forces a new Private DNS Resolver Dns Forwarding Ruleset to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name which should be used for this Private DNS Resolver Dns Forwarding Ruleset. Changing this forces a new Private DNS Resolver Dns Forwarding Ruleset to be created.
  final pulumi.Input<String>? name;
  /// The list of IDs of the Private DNS Resolver Outbound Endpoint that is linked to the Private DNS Resolver Dns Forwarding Ruleset.
  final pulumi.Input<List<String>>? privateDnsResolverOutboundEndpointIds;
  /// Specifies the name of the Resource Group where the Private DNS Resolver Dns Forwarding Ruleset should exist. Changing this forces a new Private DNS Resolver Dns Forwarding Ruleset to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the Private DNS Resolver Dns Forwarding Ruleset.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ResolverDnsForwardingRulesetState].
  /// [location] Specifies the Azure Region where the Private DNS Resolver Dns Forwarding Ruleset should exist. Changing this forces a new Private DNS Resolver Dns Forwarding Ruleset to be created.
  /// [name] Specifies the name which should be used for this Private DNS Resolver Dns Forwarding Ruleset. Changing this forces a new Private DNS Resolver Dns Forwarding Ruleset to be created.
  /// [privateDnsResolverOutboundEndpointIds] The list of IDs of the Private DNS Resolver Outbound Endpoint that is linked to the Private DNS Resolver Dns Forwarding Ruleset.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Private DNS Resolver Dns Forwarding Ruleset should exist. Changing this forces a new Private DNS Resolver Dns Forwarding Ruleset to be created.
  /// [tags] A mapping of tags to assign to the Private DNS Resolver Dns Forwarding Ruleset.
  ResolverDnsForwardingRulesetState({
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? privateDnsResolverOutboundEndpointIds,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      privateDnsResolverOutboundEndpointIds = pulumi.Input.asOptionalInput<List<String>>(privateDnsResolverOutboundEndpointIds),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'name': ?name,
      'privateDnsResolverOutboundEndpointIds': ?privateDnsResolverOutboundEndpointIds,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ResolverDnsForwardingRulesetState.fromMap(Map<String, dynamic> map) {
    return ResolverDnsForwardingRulesetState(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      privateDnsResolverOutboundEndpointIds: map['privateDnsResolverOutboundEndpointIds'] == null ? null : pulumi.Output.create<List<String>>((map['privateDnsResolverOutboundEndpointIds'] as List).cast<String>()),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

