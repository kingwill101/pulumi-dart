// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter.dart';
import 'interconnect_attachment.dart';
import 'policy_based_route_next_hop_other_routes.dart';
import 'virtual_machine.dart';

/// {@template pulumi_networkconnectivity_v1_policy_based_route_args_doc}
/// The set of arguments for PolicyBasedRoute.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_v1_policy_based_route_args_doc}
class PolicyBasedRouteArgs {
  /// Optional. An optional description of this resource. Provide this field when you create the resource.
  final pulumi.Input<String>? description;
  /// The filter to match L4 traffic.
  final pulumi.Input<Filter> filter;
  /// Optional. The interconnect attachments that this policy-based route applies to.
  final pulumi.Input<InterconnectAttachment>? interconnectAttachment;
  /// User-defined labels.
  final pulumi.Input<Map<String, String>>? labels;
  /// Immutable. A unique name of the resource in the form of `projects/{project_number}/locations/global/PolicyBasedRoutes/{policy_based_route_id}`
  final pulumi.Input<String>? name;
  /// Fully-qualified URL of the network that this route applies to, for example: projects/my-project/global/networks/my-network.
  final pulumi.Input<String> network;
  /// Optional. The IP address of a global-access-enabled L4 ILB that is the next hop for matching packets. For this version, only nextHopIlbIp is supported.
  final pulumi.Input<String>? nextHopIlbIp;
  /// Optional. Other routes that will be referenced to determine the next hop of the packet.
  final pulumi.Input<PolicyBasedRouteNextHopOtherRoutes>? nextHopOtherRoutes;
  /// Required. Unique id for the policy-based route to create.
  final pulumi.Input<String> policyBasedRouteId;
  /// Optional. The priority of this policy-based route. Priority is used to break ties in cases where there are more than one matching policy-based routes found. In cases where multiple policy-based routes are matched, the one with the lowest-numbered priority value wins. The default value is 1000. The priority value must be from 1 to 65535, inclusive.
  final pulumi.Input<int>? priority;
  final pulumi.Input<String>? project;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Optional. VM instances to which this policy-based route applies to.
  final pulumi.Input<VirtualMachine>? virtualMachine;

  /// Creates a new [PolicyBasedRouteArgs].
  /// [description] Optional. An optional description of this resource. Provide this field when you create the resource.
  /// [filter] The filter to match L4 traffic.
  /// [interconnectAttachment] Optional. The interconnect attachments that this policy-based route applies to.
  /// [labels] User-defined labels.
  /// [name] Immutable. A unique name of the resource in the form of `projects/{project_number}/locations/global/PolicyBasedRoutes/{policy_based_route_id}`
  /// [network] Fully-qualified URL of the network that this route applies to, for example: projects/my-project/global/networks/my-network.
  /// [nextHopIlbIp] Optional. The IP address of a global-access-enabled L4 ILB that is the next hop for matching packets. For this version, only nextHopIlbIp is supported.
  /// [nextHopOtherRoutes] Optional. Other routes that will be referenced to determine the next hop of the packet.
  /// [policyBasedRouteId] Required. Unique id for the policy-based route to create.
  /// [priority] Optional. The priority of this policy-based route. Priority is used to break ties in cases where there are more than one matching policy-based routes found. In cases where multiple policy-based routes are matched, the one with the lowest-numbered priority value wins. The default value is 1000. The priority value must be from 1 to 65535, inclusive.
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [virtualMachine] Optional. VM instances to which this policy-based route applies to.
  PolicyBasedRouteArgs({
    this.description,
    required this.filter,
    this.interconnectAttachment,
    this.labels,
    this.name,
    required this.network,
    this.nextHopIlbIp,
    this.nextHopOtherRoutes,
    required this.policyBasedRouteId,
    this.priority,
    this.project,
    this.requestId,
    this.virtualMachine,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'filter': pulumi.Input.mapInputValue<Filter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'interconnectAttachment': ?pulumi.Input.mapOptionalInputValue<InterconnectAttachment, Map<String, dynamic>>(interconnectAttachment, (value) => value.toMap()),
      'labels': ?labels,
      'name': ?name,
      'network': network,
      'nextHopIlbIp': ?nextHopIlbIp,
      'nextHopOtherRoutes': ?pulumi.Input.mapOptionalInputValue<PolicyBasedRouteNextHopOtherRoutes, String>(nextHopOtherRoutes, (value) => value.value),
      'policyBasedRouteId': policyBasedRouteId,
      'priority': ?priority,
      'project': ?project,
      'requestId': ?requestId,
      'virtualMachine': ?pulumi.Input.mapOptionalInputValue<VirtualMachine, Map<String, dynamic>>(virtualMachine, (value) => value.toMap()),
    };
  }

  factory PolicyBasedRouteArgs.fromMap(Map<String, dynamic> map) {
    return PolicyBasedRouteArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      filter: (Filter.fromMap((map['filter'] as Map).cast<String, dynamic>())).input(),
      interconnectAttachment: map['interconnectAttachment'] == null ? null : (InterconnectAttachment.fromMap((map['interconnectAttachment'] as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      network: (map['network'] as String).input(),
      nextHopIlbIp: map['nextHopIlbIp'] == null ? null : (map['nextHopIlbIp'] as String).input(),
      nextHopOtherRoutes: map['nextHopOtherRoutes'] == null ? null : (PolicyBasedRouteNextHopOtherRoutes.fromValue(map['nextHopOtherRoutes'] as String)).input(),
      policyBasedRouteId: (map['policyBasedRouteId'] as String).input(),
      priority: map['priority'] == null ? null : (map['priority'] as int).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId'] as String).input(),
      virtualMachine: map['virtualMachine'] == null ? null : (VirtualMachine.fromMap((map['virtualMachine'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

