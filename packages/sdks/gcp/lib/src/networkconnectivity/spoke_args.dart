// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spoke_gateway.dart';
import 'spoke_linked_interconnect_attachments.dart';
import 'spoke_linked_producer_vpc_network.dart';
import 'spoke_linked_router_appliance_instances.dart';
import 'spoke_linked_vpc_network.dart';
import 'spoke_linked_vpn_tunnels.dart';

/// {@template pulumi_networkconnectivity_spoke_spoke_args_doc}
/// The set of arguments for Spoke.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_spoke_spoke_args_doc}
class SpokeArgs {
  /// An optional description of the spoke.
  final pulumi.Input<String>? description;
  /// This is a gateway that can apply specialized processing to traffic going through it.
  /// Structure is documented below.
  final pulumi.Input<SpokeGateway>? gateway;
  /// The name of the group that this spoke is associated with.
  final pulumi.Input<String>? group;
  /// Immutable. The URI of the hub that this spoke is attached to.
  final pulumi.Input<String> hub;
  /// Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// A collection of VLAN attachment resources. These resources should be redundant attachments that all advertise the same prefixes to Google Cloud. Alternatively, in active/passive configurations, all attachments should be capable of advertising the same prefixes.
  /// Structure is documented below.
  final pulumi.Input<SpokeLinkedInterconnectAttachments>? linkedInterconnectAttachments;
  /// Producer VPC network that is associated with the spoke.
  /// Structure is documented below.
  final pulumi.Input<SpokeLinkedProducerVpcNetwork>? linkedProducerVpcNetwork;
  /// The URIs of linked Router appliance resources
  /// Structure is documented below.
  final pulumi.Input<SpokeLinkedRouterApplianceInstances>? linkedRouterApplianceInstances;
  /// VPC network that is associated with the spoke.
  /// Structure is documented below.
  final pulumi.Input<SpokeLinkedVpcNetwork>? linkedVpcNetwork;
  /// The URIs of linked VPN tunnel resources
  /// Structure is documented below.
  final pulumi.Input<SpokeLinkedVpnTunnels>? linkedVpnTunnels;
  /// The location for the resource
  final pulumi.Input<String> location;
  /// Immutable. The name of the spoke. Spoke names must be unique.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [SpokeArgs].
  /// [description] An optional description of the spoke.
  /// [gateway] This is a gateway that can apply specialized processing to traffic going through it.
  /// [group] The name of the group that this spoke is associated with.
  /// [hub] Immutable. The URI of the hub that this spoke is attached to.
  /// [labels] Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// [linkedInterconnectAttachments] A collection of VLAN attachment resources. These resources should be redundant attachments that all advertise the same prefixes to Google Cloud. Alternatively, in active/passive configurations, all attachments should be capable of advertising the same prefixes.
  /// [linkedProducerVpcNetwork] Producer VPC network that is associated with the spoke.
  /// [linkedRouterApplianceInstances] The URIs of linked Router appliance resources
  /// [linkedVpcNetwork] VPC network that is associated with the spoke.
  /// [linkedVpnTunnels] The URIs of linked VPN tunnel resources
  /// [location] The location for the resource
  /// [name] Immutable. The name of the spoke. Spoke names must be unique.
  /// [project] The ID of the project in which the resource belongs.
  SpokeArgs({
    this.description,
    this.gateway,
    this.group,
    required this.hub,
    this.labels,
    this.linkedInterconnectAttachments,
    this.linkedProducerVpcNetwork,
    this.linkedRouterApplianceInstances,
    this.linkedVpcNetwork,
    this.linkedVpnTunnels,
    required this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'gateway': ?pulumi.Input.mapOptionalInputValue<SpokeGateway, Map<String, dynamic>>(gateway, (value) => value.toMap()),
      'group': ?group,
      'hub': hub,
      'labels': ?labels,
      'linkedInterconnectAttachments': ?pulumi.Input.mapOptionalInputValue<SpokeLinkedInterconnectAttachments, Map<String, dynamic>>(linkedInterconnectAttachments, (value) => value.toMap()),
      'linkedProducerVpcNetwork': ?pulumi.Input.mapOptionalInputValue<SpokeLinkedProducerVpcNetwork, Map<String, dynamic>>(linkedProducerVpcNetwork, (value) => value.toMap()),
      'linkedRouterApplianceInstances': ?pulumi.Input.mapOptionalInputValue<SpokeLinkedRouterApplianceInstances, Map<String, dynamic>>(linkedRouterApplianceInstances, (value) => value.toMap()),
      'linkedVpcNetwork': ?pulumi.Input.mapOptionalInputValue<SpokeLinkedVpcNetwork, Map<String, dynamic>>(linkedVpcNetwork, (value) => value.toMap()),
      'linkedVpnTunnels': ?pulumi.Input.mapOptionalInputValue<SpokeLinkedVpnTunnels, Map<String, dynamic>>(linkedVpnTunnels, (value) => value.toMap()),
      'location': location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory SpokeArgs.fromMap(Map<String, dynamic> map) {
    return SpokeArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      gateway: map['gateway'] == null ? null : (SpokeGateway.fromMap((map['gateway'] as Map).cast<String, dynamic>())).input(),
      group: map['group'] == null ? null : (map['group'] as String).input(),
      hub: (map['hub'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      linkedInterconnectAttachments: map['linkedInterconnectAttachments'] == null ? null : (SpokeLinkedInterconnectAttachments.fromMap((map['linkedInterconnectAttachments'] as Map).cast<String, dynamic>())).input(),
      linkedProducerVpcNetwork: map['linkedProducerVpcNetwork'] == null ? null : (SpokeLinkedProducerVpcNetwork.fromMap((map['linkedProducerVpcNetwork'] as Map).cast<String, dynamic>())).input(),
      linkedRouterApplianceInstances: map['linkedRouterApplianceInstances'] == null ? null : (SpokeLinkedRouterApplianceInstances.fromMap((map['linkedRouterApplianceInstances'] as Map).cast<String, dynamic>())).input(),
      linkedVpcNetwork: map['linkedVpcNetwork'] == null ? null : (SpokeLinkedVpcNetwork.fromMap((map['linkedVpcNetwork'] as Map).cast<String, dynamic>())).input(),
      linkedVpnTunnels: map['linkedVpnTunnels'] == null ? null : (SpokeLinkedVpnTunnels.fromMap((map['linkedVpnTunnels'] as Map).cast<String, dynamic>())).input(),
      location: (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

