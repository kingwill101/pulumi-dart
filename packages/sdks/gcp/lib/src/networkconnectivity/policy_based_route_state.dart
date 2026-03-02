// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_based_route_filter.dart';
import 'policy_based_route_interconnect_attachment.dart';
import 'policy_based_route_virtual_machine.dart';
import 'policy_based_route_warning.dart';

/// Input properties used for looking up and filtering PolicyBasedRoute resources.
class PolicyBasedRouteState {
  /// Time when the policy-based route was created.
  final pulumi.Input<String>? createTime;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The filter to match L4 traffic.
  /// Structure is documented below.
  final pulumi.Input<PolicyBasedRouteFilter>? filter;
  /// The interconnect attachments that this policy-based route applies to.
  /// Structure is documented below.
  final pulumi.Input<PolicyBasedRouteInterconnectAttachment>? interconnectAttachment;
  /// Type of this resource.
  final pulumi.Input<String>? kind;
  /// User-defined labels.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The name of the policy based route.
  final pulumi.Input<String>? name;
  /// Fully-qualified URL of the network that this route applies to, for example: projects/my-project/global/networks/my-network.
  final pulumi.Input<String>? network;
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
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Time when the policy-based route was created.
  final pulumi.Input<String>? updateTime;
  /// VM instances to which this policy-based route applies to.
  /// Structure is documented below.
  final pulumi.Input<PolicyBasedRouteVirtualMachine>? virtualMachine;
  /// If potential misconfigurations are detected for this route, this field will be populated with warning messages.
  /// Structure is documented below.
  final pulumi.Input<List<PolicyBasedRouteWarning>>? warnings;

  /// Creates a new [PolicyBasedRouteState].
  /// [createTime] Time when the policy-based route was created.
  /// [description] An optional description of this resource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [filter] The filter to match L4 traffic.
  /// [interconnectAttachment] The interconnect attachments that this policy-based route applies to.
  /// [kind] Type of this resource.
  /// [labels] User-defined labels.
  /// [name] The name of the policy based route.
  /// [network] Fully-qualified URL of the network that this route applies to, for example: projects/my-project/global/networks/my-network.
  /// [nextHopIlbIp] The IP address of a global-access-enabled L4 ILB that is the next hop for matching packets.
  /// [nextHopOtherRoutes] Other routes that will be referenced to determine the next hop of the packet.
  /// [priority] The priority of this policy-based route. Priority is used to break ties in cases where there are more than one matching policy-based routes found. In cases where multiple policy-based routes are matched, the one with the lowest-numbered priority value wins. The default value is 1000. The priority value must be from 1 to 65535, inclusive.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [updateTime] Time when the policy-based route was created.
  /// [virtualMachine] VM instances to which this policy-based route applies to.
  /// [warnings] If potential misconfigurations are detected for this route, this field will be populated with warning messages.
  PolicyBasedRouteState({
    this.createTime,
    this.description,
    this.effectiveLabels,
    this.filter,
    this.interconnectAttachment,
    this.kind,
    this.labels,
    this.name,
    this.network,
    this.nextHopIlbIp,
    this.nextHopOtherRoutes,
    this.priority,
    this.project,
    this.pulumiLabels,
    this.updateTime,
    this.virtualMachine,
    this.warnings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'filter': ?pulumi.Input.mapOptionalInputValue<PolicyBasedRouteFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'interconnectAttachment': ?pulumi.Input.mapOptionalInputValue<PolicyBasedRouteInterconnectAttachment, Map<String, dynamic>>(interconnectAttachment, (value) => value.toMap()),
      'kind': ?kind,
      'labels': ?labels,
      'name': ?name,
      'network': ?network,
      'nextHopIlbIp': ?nextHopIlbIp,
      'nextHopOtherRoutes': ?nextHopOtherRoutes,
      'priority': ?priority,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'updateTime': ?updateTime,
      'virtualMachine': ?pulumi.Input.mapOptionalInputValue<PolicyBasedRouteVirtualMachine, Map<String, dynamic>>(virtualMachine, (value) => value.toMap()),
      'warnings': ?pulumi.Input.mapOptionalInputValue<List<PolicyBasedRouteWarning>, List<Map<String, dynamic>>>(warnings, (value) => pulumi.Input.encodeList<PolicyBasedRouteWarning, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PolicyBasedRouteState.fromMap(Map<String, dynamic> map) {
    return PolicyBasedRouteState(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      filter: map['filter'] == null ? null : (PolicyBasedRouteFilter.fromMap((map['filter']! as Map).cast<String, dynamic>())).input(),
      interconnectAttachment: map['interconnectAttachment'] == null ? null : (PolicyBasedRouteInterconnectAttachment.fromMap((map['interconnectAttachment']! as Map).cast<String, dynamic>())).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      network: map['network'] == null ? null : (map['network']! as String).input(),
      nextHopIlbIp: map['nextHopIlbIp'] == null ? null : (map['nextHopIlbIp']! as String).input(),
      nextHopOtherRoutes: map['nextHopOtherRoutes'] == null ? null : (map['nextHopOtherRoutes']! as String).input(),
      priority: map['priority'] == null ? null : (map['priority']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
      virtualMachine: map['virtualMachine'] == null ? null : (PolicyBasedRouteVirtualMachine.fromMap((map['virtualMachine']! as Map).cast<String, dynamic>())).input(),
      warnings: map['warnings'] == null ? null : (pulumi.Input.decodeList<PolicyBasedRouteWarning>(map['warnings']!, (value) => PolicyBasedRouteWarning.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

