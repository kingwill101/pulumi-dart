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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<PolicyBasedRouteFilter>? filter,
    pulumi.Output<PolicyBasedRouteInterconnectAttachment>? interconnectAttachment,
    pulumi.Output<String>? kind,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<String>? network,
    pulumi.Output<String>? nextHopIlbIp,
    pulumi.Output<String>? nextHopOtherRoutes,
    pulumi.Output<int>? priority,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? updateTime,
    pulumi.Output<PolicyBasedRouteVirtualMachine>? virtualMachine,
    pulumi.Output<List<PolicyBasedRouteWarning>>? warnings,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      filter = pulumi.Input.asOptionalInput<PolicyBasedRouteFilter>(filter),
      interconnectAttachment = pulumi.Input.asOptionalInput<PolicyBasedRouteInterconnectAttachment>(interconnectAttachment),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<String>(network),
      nextHopIlbIp = pulumi.Input.asOptionalInput<String>(nextHopIlbIp),
      nextHopOtherRoutes = pulumi.Input.asOptionalInput<String>(nextHopOtherRoutes),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      virtualMachine = pulumi.Input.asOptionalInput<PolicyBasedRouteVirtualMachine>(virtualMachine),
      warnings = pulumi.Input.asOptionalInput<List<PolicyBasedRouteWarning>>(warnings);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      filter: map['filter'] == null ? null : pulumi.Output.create<PolicyBasedRouteFilter>(PolicyBasedRouteFilter.fromMap((map['filter'] as Map).cast<String, dynamic>())),
      interconnectAttachment: map['interconnectAttachment'] == null ? null : pulumi.Output.create<PolicyBasedRouteInterconnectAttachment>(PolicyBasedRouteInterconnectAttachment.fromMap((map['interconnectAttachment'] as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<String>(map['network'] as String),
      nextHopIlbIp: map['nextHopIlbIp'] == null ? null : pulumi.Output.create<String>(map['nextHopIlbIp'] as String),
      nextHopOtherRoutes: map['nextHopOtherRoutes'] == null ? null : pulumi.Output.create<String>(map['nextHopOtherRoutes'] as String),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      virtualMachine: map['virtualMachine'] == null ? null : pulumi.Output.create<PolicyBasedRouteVirtualMachine>(PolicyBasedRouteVirtualMachine.fromMap((map['virtualMachine'] as Map).cast<String, dynamic>())),
      warnings: map['warnings'] == null ? null : pulumi.Output.create<List<PolicyBasedRouteWarning>>(pulumi.Input.decodeList<PolicyBasedRouteWarning>(map['warnings'], (value) => PolicyBasedRouteWarning.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

