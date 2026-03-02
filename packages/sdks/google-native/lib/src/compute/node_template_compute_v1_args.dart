// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_compute_v1.dart';
import 'local_disk_compute_v1.dart';
import 'node_template_cpu_overcommit_type_compute_v1.dart';
import 'node_template_node_type_flexibility_compute_v1.dart';
import 'server_binding_compute_v1.dart';

/// {@template pulumi_compute_v1_node_template_compute_v1_args_doc}
/// The set of arguments for NodeTemplate.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_node_template_compute_v1_args_doc}
class NodeTemplateComputeV1Args {
  final pulumi.Input<List<AcceleratorConfigComputeV1>>? accelerators;
  /// CPU overcommit.
  final pulumi.Input<NodeTemplateCpuOvercommitTypeComputeV1>? cpuOvercommitType;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  final pulumi.Input<List<LocalDiskComputeV1>>? disks;
  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// Labels to use for node affinity, which will be used in instance scheduling.
  final pulumi.Input<Map<String, String>>? nodeAffinityLabels;
  /// The node type to use for nodes group that are created from this template.
  final pulumi.Input<String>? nodeType;
  /// Do not use. Instead, use the node_type property.
  final pulumi.Input<NodeTemplateNodeTypeFlexibilityComputeV1>? nodeTypeFlexibility;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Sets the binding properties for the physical server. Valid values include: - *[Default]* RESTART_NODE_ON_ANY_SERVER: Restarts VMs on any available physical server - RESTART_NODE_ON_MINIMAL_SERVER: Restarts VMs on the same physical server whenever possible See Sole-tenant node options for more information.
  final pulumi.Input<ServerBindingComputeV1>? serverBinding;

  /// Creates a new [NodeTemplateComputeV1Args].
  /// [accelerators] Optional.
  /// [cpuOvercommitType] CPU overcommit.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [disks] Optional.
  /// [name] The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [nodeAffinityLabels] Labels to use for node affinity, which will be used in instance scheduling.
  /// [nodeType] The node type to use for nodes group that are created from this template.
  /// [nodeTypeFlexibility] Do not use. Instead, use the node_type property.
  /// [project] Optional.
  /// [region] Required.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [serverBinding] Sets the binding properties for the physical server. Valid values include: - *[Default]* RESTART_NODE_ON_ANY_SERVER: Restarts VMs on any available physical server - RESTART_NODE_ON_MINIMAL_SERVER: Restarts VMs on the same physical server whenever possible See Sole-tenant node options for more information.
  NodeTemplateComputeV1Args({
    this.accelerators,
    this.cpuOvercommitType,
    this.description,
    this.disks,
    this.name,
    this.nodeAffinityLabels,
    this.nodeType,
    this.nodeTypeFlexibility,
    this.project,
    required this.region,
    this.requestId,
    this.serverBinding,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerators': ?pulumi.Input.mapOptionalInputValue<List<AcceleratorConfigComputeV1>, List<Map<String, dynamic>>>(accelerators, (value) => pulumi.Input.encodeList<AcceleratorConfigComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cpuOvercommitType': ?pulumi.Input.mapOptionalInputValue<NodeTemplateCpuOvercommitTypeComputeV1, String>(cpuOvercommitType, (value) => value.value),
      'description': ?description,
      'disks': ?pulumi.Input.mapOptionalInputValue<List<LocalDiskComputeV1>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<LocalDiskComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'nodeAffinityLabels': ?nodeAffinityLabels,
      'nodeType': ?nodeType,
      'nodeTypeFlexibility': ?pulumi.Input.mapOptionalInputValue<NodeTemplateNodeTypeFlexibilityComputeV1, Map<String, dynamic>>(nodeTypeFlexibility, (value) => value.toMap()),
      'project': ?project,
      'region': region,
      'requestId': ?requestId,
      'serverBinding': ?pulumi.Input.mapOptionalInputValue<ServerBindingComputeV1, Map<String, dynamic>>(serverBinding, (value) => value.toMap()),
    };
  }

  factory NodeTemplateComputeV1Args.fromMap(Map<String, dynamic> map) {
    return NodeTemplateComputeV1Args(
      accelerators: map['accelerators'] == null ? null : (pulumi.Input.decodeList<AcceleratorConfigComputeV1>(map['accelerators']!, (value) => AcceleratorConfigComputeV1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      cpuOvercommitType: map['cpuOvercommitType'] == null ? null : (NodeTemplateCpuOvercommitTypeComputeV1.fromValue(map['cpuOvercommitType']! as String)).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      disks: map['disks'] == null ? null : (pulumi.Input.decodeList<LocalDiskComputeV1>(map['disks']!, (value) => LocalDiskComputeV1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      nodeAffinityLabels: map['nodeAffinityLabels'] == null ? null : ((map['nodeAffinityLabels']! as Map).cast<String, String>()).input(),
      nodeType: map['nodeType'] == null ? null : (map['nodeType']! as String).input(),
      nodeTypeFlexibility: map['nodeTypeFlexibility'] == null ? null : (NodeTemplateNodeTypeFlexibilityComputeV1.fromMap((map['nodeTypeFlexibility']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: (map['region'] as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId']! as String).input(),
      serverBinding: map['serverBinding'] == null ? null : (ServerBindingComputeV1.fromMap((map['serverBinding']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

