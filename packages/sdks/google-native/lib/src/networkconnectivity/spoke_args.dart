// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_interconnect_attachments.dart';
import 'linked_router_appliance_instances.dart';
import 'linked_vpc_network.dart';
import 'linked_vpn_tunnels.dart';

/// {@template pulumi_networkconnectivity_v1_spoke_args_doc}
/// The set of arguments for Spoke.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_v1_spoke_args_doc}
class SpokeArgs {
  /// An optional description of the spoke.
  final pulumi.Input<String>? description;
  /// Optional. The name of the group that this spoke is associated with.
  final pulumi.Input<String>? group;
  /// Immutable. The name of the hub that this spoke is attached to.
  final pulumi.Input<String>? hub;
  /// Optional labels in key-value pair format. For more information about labels, see [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  final pulumi.Input<Map<String, String>>? labels;
  /// VLAN attachments that are associated with the spoke.
  final pulumi.Input<LinkedInterconnectAttachments>? linkedInterconnectAttachments;
  /// Router appliance instances that are associated with the spoke.
  final pulumi.Input<LinkedRouterApplianceInstances>? linkedRouterApplianceInstances;
  /// Optional. VPC network that is associated with the spoke.
  final pulumi.Input<LinkedVpcNetwork>? linkedVpcNetwork;
  /// VPN tunnels that are associated with the spoke.
  final pulumi.Input<LinkedVpnTunnels>? linkedVpnTunnels;
  final pulumi.Input<String>? location;
  /// Immutable. The name of the spoke. Spoke names must be unique. They use the following form: `projects/{project_number}/locations/{region}/spokes/{spoke_id}`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server knows to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check to see whether the original operation was received. If it was, the server ignores the second request. This behavior prevents clients from mistakenly creating duplicate commitments. The request ID must be a valid UUID, with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Required. Unique id for the spoke to create.
  final pulumi.Input<String> spokeId;

  /// Creates a new [SpokeArgs].
  /// [description] An optional description of the spoke.
  /// [group] Optional. The name of the group that this spoke is associated with.
  /// [hub] Immutable. The name of the hub that this spoke is attached to.
  /// [labels] Optional labels in key-value pair format. For more information about labels, see [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// [linkedInterconnectAttachments] VLAN attachments that are associated with the spoke.
  /// [linkedRouterApplianceInstances] Router appliance instances that are associated with the spoke.
  /// [linkedVpcNetwork] Optional. VPC network that is associated with the spoke.
  /// [linkedVpnTunnels] VPN tunnels that are associated with the spoke.
  /// [location] Optional.
  /// [name] Immutable. The name of the spoke. Spoke names must be unique. They use the following form: `projects/{project_number}/locations/{region}/spokes/{spoke_id}`
  /// [project] Optional.
  /// [requestId] Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server knows to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check to see whether the original operation was received. If it was, the server ignores the second request. This behavior prevents clients from mistakenly creating duplicate commitments. The request ID must be a valid UUID, with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [spokeId] Required. Unique id for the spoke to create.
  SpokeArgs({
    this.description,
    this.group,
    this.hub,
    this.labels,
    this.linkedInterconnectAttachments,
    this.linkedRouterApplianceInstances,
    this.linkedVpcNetwork,
    this.linkedVpnTunnels,
    this.location,
    this.name,
    this.project,
    this.requestId,
    required this.spokeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'group': ?group,
      'hub': ?hub,
      'labels': ?labels,
      'linkedInterconnectAttachments': ?pulumi.Input.mapOptionalInputValue<LinkedInterconnectAttachments, Map<String, dynamic>>(linkedInterconnectAttachments, (value) => value.toMap()),
      'linkedRouterApplianceInstances': ?pulumi.Input.mapOptionalInputValue<LinkedRouterApplianceInstances, Map<String, dynamic>>(linkedRouterApplianceInstances, (value) => value.toMap()),
      'linkedVpcNetwork': ?pulumi.Input.mapOptionalInputValue<LinkedVpcNetwork, Map<String, dynamic>>(linkedVpcNetwork, (value) => value.toMap()),
      'linkedVpnTunnels': ?pulumi.Input.mapOptionalInputValue<LinkedVpnTunnels, Map<String, dynamic>>(linkedVpnTunnels, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'spokeId': spokeId,
    };
  }

  factory SpokeArgs.fromMap(Map<String, dynamic> map) {
    return SpokeArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      group: map['group'] == null ? null : (map['group']! as String).input(),
      hub: map['hub'] == null ? null : (map['hub']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      linkedInterconnectAttachments: map['linkedInterconnectAttachments'] == null ? null : (LinkedInterconnectAttachments.fromMap((map['linkedInterconnectAttachments']! as Map).cast<String, dynamic>())).input(),
      linkedRouterApplianceInstances: map['linkedRouterApplianceInstances'] == null ? null : (LinkedRouterApplianceInstances.fromMap((map['linkedRouterApplianceInstances']! as Map).cast<String, dynamic>())).input(),
      linkedVpcNetwork: map['linkedVpcNetwork'] == null ? null : (LinkedVpcNetwork.fromMap((map['linkedVpcNetwork']! as Map).cast<String, dynamic>())).input(),
      linkedVpnTunnels: map['linkedVpnTunnels'] == null ? null : (LinkedVpnTunnels.fromMap((map['linkedVpnTunnels']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId']! as String).input(),
      spokeId: (map['spokeId'] as String).input(),
    );
  }
}

