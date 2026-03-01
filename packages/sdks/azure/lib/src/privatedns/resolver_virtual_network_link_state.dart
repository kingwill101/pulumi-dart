// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResolverVirtualNetworkLink resources.
class ResolverVirtualNetworkLinkState {
  /// Specifies the ID of the Private DNS Resolver DNS Forwarding Ruleset. Changing this forces a new Private DNS Resolver Virtual Network Link to be created.
  final pulumi.Input<String>? dnsForwardingRulesetId;
  /// Metadata attached to the Private DNS Resolver Virtual Network Link.
  final pulumi.Input<Map<String, String>>? metadata;
  /// Specifies the name which should be used for this Private DNS Resolver Virtual Network Link. Changing this forces a new Private DNS Resolver Virtual Network Link to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Virtual Network that is linked to the Private DNS Resolver Virtual Network Link. Changing this forces a new resource to be created.
  final pulumi.Input<String>? virtualNetworkId;

  /// Creates a new [ResolverVirtualNetworkLinkState].
  /// [dnsForwardingRulesetId] Specifies the ID of the Private DNS Resolver DNS Forwarding Ruleset. Changing this forces a new Private DNS Resolver Virtual Network Link to be created.
  /// [metadata] Metadata attached to the Private DNS Resolver Virtual Network Link.
  /// [name] Specifies the name which should be used for this Private DNS Resolver Virtual Network Link. Changing this forces a new Private DNS Resolver Virtual Network Link to be created.
  /// [virtualNetworkId] The ID of the Virtual Network that is linked to the Private DNS Resolver Virtual Network Link. Changing this forces a new resource to be created.
  ResolverVirtualNetworkLinkState({
    pulumi.Output<String>? dnsForwardingRulesetId,
    pulumi.Output<Map<String, String>>? metadata,
    pulumi.Output<String>? name,
    pulumi.Output<String>? virtualNetworkId,
  }) :
      dnsForwardingRulesetId = pulumi.Input.asOptionalInput<String>(dnsForwardingRulesetId),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      virtualNetworkId = pulumi.Input.asOptionalInput<String>(virtualNetworkId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsForwardingRulesetId': ?dnsForwardingRulesetId,
      'metadata': ?metadata,
      'name': ?name,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory ResolverVirtualNetworkLinkState.fromMap(Map<String, dynamic> map) {
    return ResolverVirtualNetworkLinkState(
      dnsForwardingRulesetId: map['dnsForwardingRulesetId'] == null ? null : pulumi.Output.create<String>(map['dnsForwardingRulesetId'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      virtualNetworkId: map['virtualNetworkId'] == null ? null : pulumi.Output.create<String>(map['virtualNetworkId'] as String),
    );
  }
}

