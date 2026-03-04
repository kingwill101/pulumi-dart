// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_response.dart';
import 'interconnect_attachment_response.dart';
import 'virtual_machine_response.dart';
import 'warnings_response.dart';

/// Result data returned by getPolicyBasedRoute.
class GetPolicyBasedRouteResult {
  /// Time when the policy-based route was created.
  final String createTime;

  /// Optional. An optional description of this resource. Provide this field when you create the resource.
  final String description;

  /// The filter to match L4 traffic.
  final FilterResponse filter;

  /// Optional. The interconnect attachments that this policy-based route applies to.
  final InterconnectAttachmentResponse interconnectAttachment;

  /// Type of this resource. Always networkconnectivity#policyBasedRoute for policy-based Route resources.
  final String kind;

  /// User-defined labels.
  final Map<String, String> labels;

  /// Immutable. A unique name of the resource in the form of `projects/{project_number}/locations/global/PolicyBasedRoutes/{policy_based_route_id}`
  final String name;

  /// Fully-qualified URL of the network that this route applies to, for example: projects/my-project/global/networks/my-network.
  final String network;

  /// Optional. The IP address of a global-access-enabled L4 ILB that is the next hop for matching packets. For this version, only nextHopIlbIp is supported.
  final String nextHopIlbIp;

  /// Optional. Other routes that will be referenced to determine the next hop of the packet.
  final String nextHopOtherRoutes;

  /// Optional. The priority of this policy-based route. Priority is used to break ties in cases where there are more than one matching policy-based routes found. In cases where multiple policy-based routes are matched, the one with the lowest-numbered priority value wins. The default value is 1000. The priority value must be from 1 to 65535, inclusive.
  final int priority;

  /// Server-defined fully-qualified URL for this resource.
  final String selfLink;

  /// Time when the policy-based route was updated.
  final String updateTime;

  /// Optional. VM instances to which this policy-based route applies to.
  final VirtualMachineResponse virtualMachine;

  /// If potential misconfigurations are detected for this route, this field will be populated with warning messages.
  final List<WarningsResponse> warnings;

  /// Creates a new [GetPolicyBasedRouteResult].
  /// [createTime] Time when the policy-based route was created.
  /// [description] Optional. An optional description of this resource. Provide this field when you create the resource.
  /// [filter] The filter to match L4 traffic.
  /// [interconnectAttachment] Optional. The interconnect attachments that this policy-based route applies to.
  /// [kind] Type of this resource. Always networkconnectivity#policyBasedRoute for policy-based Route resources.
  /// [labels] User-defined labels.
  /// [name] Immutable. A unique name of the resource in the form of `projects/{project_number}/locations/global/PolicyBasedRoutes/{policy_based_route_id}`
  /// [network] Fully-qualified URL of the network that this route applies to, for example: projects/my-project/global/networks/my-network.
  /// [nextHopIlbIp] Optional. The IP address of a global-access-enabled L4 ILB that is the next hop for matching packets. For this version, only nextHopIlbIp is supported.
  /// [nextHopOtherRoutes] Optional. Other routes that will be referenced to determine the next hop of the packet.
  /// [priority] Optional. The priority of this policy-based route. Priority is used to break ties in cases where there are more than one matching policy-based routes found. In cases where multiple policy-based routes are matched, the one with the lowest-numbered priority value wins. The default value is 1000. The priority value must be from 1 to 65535, inclusive.
  /// [selfLink] Server-defined fully-qualified URL for this resource.
  /// [updateTime] Time when the policy-based route was updated.
  /// [virtualMachine] Optional. VM instances to which this policy-based route applies to.
  /// [warnings] If potential misconfigurations are detected for this route, this field will be populated with warning messages.
  GetPolicyBasedRouteResult({
    required this.createTime,
    required this.description,
    required this.filter,
    required this.interconnectAttachment,
    required this.kind,
    required this.labels,
    required this.name,
    required this.network,
    required this.nextHopIlbIp,
    required this.nextHopOtherRoutes,
    required this.priority,
    required this.selfLink,
    required this.updateTime,
    required this.virtualMachine,
    required this.warnings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'filter': filter.toMap(),
      'interconnectAttachment': interconnectAttachment.toMap(),
      'kind': kind,
      'labels': labels,
      'name': name,
      'network': network,
      'nextHopIlbIp': nextHopIlbIp,
      'nextHopOtherRoutes': nextHopOtherRoutes,
      'priority': priority,
      'selfLink': selfLink,
      'updateTime': updateTime,
      'virtualMachine': virtualMachine.toMap(),
      'warnings':
          pulumi.Input.encodeList<WarningsResponse, Map<String, dynamic>>(
            warnings,
            (value) => value.toMap(),
          ),
    };
  }

  factory GetPolicyBasedRouteResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyBasedRouteResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      filter: FilterResponse.fromMap(
        (map['filter']! as Map).cast<String, dynamic>(),
      ),
      interconnectAttachment: InterconnectAttachmentResponse.fromMap(
        (map['interconnectAttachment']! as Map).cast<String, dynamic>(),
      ),
      kind: map['kind'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      network: map['network'] as String,
      nextHopIlbIp: map['nextHopIlbIp'] as String,
      nextHopOtherRoutes: map['nextHopOtherRoutes'] as String,
      priority: map['priority'] as int,
      selfLink: map['selfLink'] as String,
      updateTime: map['updateTime'] as String,
      virtualMachine: VirtualMachineResponse.fromMap(
        (map['virtualMachine']! as Map).cast<String, dynamic>(),
      ),
      warnings: pulumi.Input.decodeList<WarningsResponse>(
        map['warnings']!,
        (value) =>
            WarningsResponse.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
