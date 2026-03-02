// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'routing_vpc.dart';

/// {@template pulumi_networkconnectivity_v1_hub_args_doc}
/// The set of arguments for Hub.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_v1_hub_args_doc}
class HubArgs {
  /// An optional description of the hub.
  final pulumi.Input<String>? description;
  /// Required. A unique identifier for the hub.
  final pulumi.Input<String> hubId;
  /// Optional labels in key-value pair format. For more information about labels, see [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  final pulumi.Input<Map<String, String>>? labels;
  /// Immutable. The name of the hub. Hub names must be unique. They use the following form: `projects/{project_number}/locations/global/hubs/{hub_id}`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server knows to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check to see whether the original operation was received. If it was, the server ignores the second request. This behavior prevents clients from mistakenly creating duplicate commitments. The request ID must be a valid UUID, with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// The VPC networks associated with this hub's spokes. This field is read-only. Network Connectivity Center automatically populates it based on the set of spokes attached to the hub.
  final pulumi.Input<List<RoutingVPC>>? routingVpcs;

  /// Creates a new [HubArgs].
  /// [description] An optional description of the hub.
  /// [hubId] Required. A unique identifier for the hub.
  /// [labels] Optional labels in key-value pair format. For more information about labels, see [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// [name] Immutable. The name of the hub. Hub names must be unique. They use the following form: `projects/{project_number}/locations/global/hubs/{hub_id}`
  /// [project] Optional.
  /// [requestId] Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server knows to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check to see whether the original operation was received. If it was, the server ignores the second request. This behavior prevents clients from mistakenly creating duplicate commitments. The request ID must be a valid UUID, with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [routingVpcs] The VPC networks associated with this hub's spokes. This field is read-only. Network Connectivity Center automatically populates it based on the set of spokes attached to the hub.
  HubArgs({
    this.description,
    required this.hubId,
    this.labels,
    this.name,
    this.project,
    this.requestId,
    this.routingVpcs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'hubId': hubId,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'routingVpcs': ?pulumi.Input.mapOptionalInputValue<List<RoutingVPC>, List<Map<String, dynamic>>>(routingVpcs, (value) => pulumi.Input.encodeList<RoutingVPC, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory HubArgs.fromMap(Map<String, dynamic> map) {
    return HubArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      hubId: (map['hubId'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId'] as String).input(),
      routingVpcs: map['routingVpcs'] == null ? null : (pulumi.Input.decodeList<RoutingVPC>(map['routingVpcs'], (value) => RoutingVPC.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

