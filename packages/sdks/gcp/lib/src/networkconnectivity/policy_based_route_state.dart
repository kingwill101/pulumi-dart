// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_based_route_filter.dart';
import 'policy_based_route_interconnect_attachment.dart';
import 'policy_based_route_virtual_machine.dart';
import 'policy_based_route_warning.dart';

/// Input properties used for looking up and filtering PolicyBasedRoute resources.
class PolicyBasedRouteState {
  /// Time when the policy-based route was created.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// An optional description of this resource.
  final pulumi.Input<String?>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// The filter to match L4 traffic.
  /// Structure is documented below.
  final pulumi.Input<PolicyBasedRouteFilter?>? filter;
  /// The interconnect attachments that this policy-based route applies to.
  /// Structure is documented below.
  final pulumi.Input<PolicyBasedRouteInterconnectAttachment?>? interconnectAttachment;
  /// Type of this resource.
  final pulumi.Input<String?>? kind;
  /// User-defined labels.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The name of the policy based route.
  final pulumi.Input<String?>? name;
  /// Fully-qualified URL of the network that this route applies to, for example: projects/my-project/global/networks/my-network.
  final pulumi.Input<String?>? network;
  /// The IP address of a global-access-enabled L4 ILB that is the next hop for matching packets.
  final pulumi.Input<String?>? nextHopIlbIp;
  /// Other routes that will be referenced to determine the next hop of the packet.
  /// Possible values are: `DEFAULT_ROUTING`.
  final pulumi.Input<String?>? nextHopOtherRoutes;
  /// The priority of this policy-based route. Priority is used to break ties in cases where there are more than one matching policy-based routes found. In cases where multiple policy-based routes are matched, the one with the lowest-numbered priority value wins. The default value is 1000. The priority value must be from 1 to 65535, inclusive.
  final pulumi.Input<int?>? priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// Time when the policy-based route was created.
  final pulumi.Input<String?>? updateTime;
  /// VM instances to which this policy-based route applies to.
  /// Structure is documented below.
  final pulumi.Input<PolicyBasedRouteVirtualMachine?>? virtualMachine;
  /// If potential misconfigurations are detected for this route, this field will be populated with warning messages.
  /// Structure is documented below.
  final pulumi.Input<List<PolicyBasedRouteWarning>?>? warnings;

  /// Creates a new [PolicyBasedRouteState].
  /// [createTime] Time when the policy-based route was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
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
  const PolicyBasedRouteState({
    this.createTime,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyBasedRouteFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      interconnectAttachment: (() { final guardedValue = map['interconnectAttachment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyBasedRouteInterconnectAttachment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextHopIlbIp: (() { final guardedValue = map['nextHopIlbIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextHopOtherRoutes: (() { final guardedValue = map['nextHopOtherRoutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualMachine: (() { final guardedValue = map['virtualMachine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyBasedRouteVirtualMachine.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      warnings: (() { final guardedValue = map['warnings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyBasedRouteWarning>(guardedValue, (value) => PolicyBasedRouteWarning.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
