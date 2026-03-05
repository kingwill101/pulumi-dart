// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_based_route_filter.dart';
import 'policy_based_route_interconnect_attachment.dart';
import 'policy_based_route_virtual_machine.dart';

/// {@template pulumi_networkconnectivity_policy_based_route_policy_based_route_args_doc}
/// The set of arguments for PolicyBasedRoute.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_policy_based_route_policy_based_route_args_doc}
class PolicyBasedRouteArgs {
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// The filter to match L4 traffic.
  /// Structure is documented below.
  final pulumi.Input<PolicyBasedRouteFilter> filter;
  /// The interconnect attachments that this policy-based route applies to.
  /// Structure is documented below.
  final pulumi.Input<PolicyBasedRouteInterconnectAttachment>? interconnectAttachment;
  /// User-defined labels.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The name of the policy based route.
  final pulumi.Input<String>? name;
  /// Fully-qualified URL of the network that this route applies to, for example: projects/my-project/global/networks/my-network.
  final pulumi.Input<String> network;
  /// The IP address of a global-access-enabled L4 ILB that is the next hop for matching packets.
  final pulumi.Input<String>? nextHopIlbIp;
  /// Other routes that will be referenced to determine the next hop of the packet.
  /// Possible values are: `DEFAULT_ROUTING`.
  final pulumi.Input<String>? nextHopOtherRoutes;
  /// The priority of this policy-based route. Priority is used to break ties in cases where there are more than one matching policy-based routes found. In cases where multiple policy-based routes are matched, the one with the lowest-numbered priority value wins. The default value is 1000. The priority value must be from 1 to 65535, inclusive.
  final pulumi.Input<int>? priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// VM instances to which this policy-based route applies to.
  /// Structure is documented below.
  final pulumi.Input<PolicyBasedRouteVirtualMachine>? virtualMachine;

  /// Creates a new [PolicyBasedRouteArgs].
  /// [description] An optional description of this resource.
  /// [filter] The filter to match L4 traffic.
  /// [interconnectAttachment] The interconnect attachments that this policy-based route applies to.
  /// [labels] User-defined labels.
  /// [name] The name of the policy based route.
  /// [network] Fully-qualified URL of the network that this route applies to, for example: projects/my-project/global/networks/my-network.
  /// [nextHopIlbIp] The IP address of a global-access-enabled L4 ILB that is the next hop for matching packets.
  /// [nextHopOtherRoutes] Other routes that will be referenced to determine the next hop of the packet.
  /// [priority] The priority of this policy-based route. Priority is used to break ties in cases where there are more than one matching policy-based routes found. In cases where multiple policy-based routes are matched, the one with the lowest-numbered priority value wins. The default value is 1000. The priority value must be from 1 to 65535, inclusive.
  /// [project] The ID of the project in which the resource belongs.
  /// [virtualMachine] VM instances to which this policy-based route applies to.
  PolicyBasedRouteArgs({
    this.description,
    required this.filter,
    this.interconnectAttachment,
    this.labels,
    this.name,
    required this.network,
    this.nextHopIlbIp,
    this.nextHopOtherRoutes,
    this.priority,
    this.project,
    this.virtualMachine,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'filter': pulumi.Input.mapInputValue<PolicyBasedRouteFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'interconnectAttachment': ?pulumi.Input.mapOptionalInputValue<PolicyBasedRouteInterconnectAttachment, Map<String, dynamic>>(interconnectAttachment, (value) => value.toMap()),
      'labels': ?labels,
      'name': ?name,
      'network': network,
      'nextHopIlbIp': ?nextHopIlbIp,
      'nextHopOtherRoutes': ?nextHopOtherRoutes,
      'priority': ?priority,
      'project': ?project,
      'virtualMachine': ?pulumi.Input.mapOptionalInputValue<PolicyBasedRouteVirtualMachine, Map<String, dynamic>>(virtualMachine, (value) => value.toMap()),
    };
  }

  factory PolicyBasedRouteArgs.fromMap(Map<String, dynamic> map) {
    return PolicyBasedRouteArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: pulumi.Input.fromValue(PolicyBasedRouteFilter.fromMap((map['filter']! as Map).cast<String, dynamic>())),
      interconnectAttachment: (() { final guardedValue = map['interconnectAttachment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyBasedRouteInterconnectAttachment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: pulumi.Input.fromValue(map['network'] as String),
      nextHopIlbIp: (() { final guardedValue = map['nextHopIlbIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextHopOtherRoutes: (() { final guardedValue = map['nextHopOtherRoutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualMachine: (() { final guardedValue = map['virtualMachine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyBasedRouteVirtualMachine.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

