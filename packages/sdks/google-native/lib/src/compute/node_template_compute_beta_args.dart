// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_compute_beta.dart';
import 'local_disk_compute_beta.dart';
import 'node_template_cpu_overcommit_type_compute_beta.dart';
import 'node_template_node_type_flexibility_compute_beta.dart';
import 'server_binding_compute_beta.dart';

/// {@template pulumi_compute_beta_node_template_compute_beta_args_doc}
/// The set of arguments for NodeTemplate.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_node_template_compute_beta_args_doc}
class NodeTemplateComputeBetaArgs {
  final pulumi.Input<List<AcceleratorConfigComputeBeta>>? accelerators;
  /// CPU overcommit.
  final pulumi.Input<NodeTemplateCpuOvercommitTypeComputeBeta>? cpuOvercommitType;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  final pulumi.Input<List<LocalDiskComputeBeta>>? disks;
  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// Labels to use for node affinity, which will be used in instance scheduling.
  final pulumi.Input<Map<String, String>>? nodeAffinityLabels;
  /// The node type to use for nodes group that are created from this template.
  final pulumi.Input<String>? nodeType;
  /// Do not use. Instead, use the node_type property.
  final pulumi.Input<NodeTemplateNodeTypeFlexibilityComputeBeta>? nodeTypeFlexibility;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Sets the binding properties for the physical server. Valid values include: - *[Default]* RESTART_NODE_ON_ANY_SERVER: Restarts VMs on any available physical server - RESTART_NODE_ON_MINIMAL_SERVER: Restarts VMs on the same physical server whenever possible See Sole-tenant node options for more information.
  final pulumi.Input<ServerBindingComputeBeta>? serverBinding;

  /// Creates a new [NodeTemplateComputeBetaArgs].
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
  const NodeTemplateComputeBetaArgs({
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
      'accelerators': ?pulumi.Input.mapOptionalInputValue<List<AcceleratorConfigComputeBeta>, List<Map<String, dynamic>>>(accelerators, (value) => pulumi.Input.encodeList<AcceleratorConfigComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cpuOvercommitType': ?pulumi.Input.mapOptionalInputValue<NodeTemplateCpuOvercommitTypeComputeBeta, String>(cpuOvercommitType, (value) => value.wireValue),
      'description': ?description,
      'disks': ?pulumi.Input.mapOptionalInputValue<List<LocalDiskComputeBeta>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<LocalDiskComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'nodeAffinityLabels': ?nodeAffinityLabels,
      'nodeType': ?nodeType,
      'nodeTypeFlexibility': ?pulumi.Input.mapOptionalInputValue<NodeTemplateNodeTypeFlexibilityComputeBeta, Map<String, dynamic>>(nodeTypeFlexibility, (value) => value.toMap()),
      'project': ?project,
      'region': region,
      'requestId': ?requestId,
      'serverBinding': ?pulumi.Input.mapOptionalInputValue<ServerBindingComputeBeta, Map<String, dynamic>>(serverBinding, (value) => value.toMap()),
    };
  }

  factory NodeTemplateComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return NodeTemplateComputeBetaArgs(
      accelerators: (() { final guardedValue = map['accelerators']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AcceleratorConfigComputeBeta>(guardedValue, (value) => AcceleratorConfigComputeBeta.fromMap((value as Map).cast<String, dynamic>()))); })(),
      cpuOvercommitType: (() { final guardedValue = map['cpuOvercommitType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeTemplateCpuOvercommitTypeComputeBeta.fromValue(guardedValue as String)); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disks: (() { final guardedValue = map['disks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LocalDiskComputeBeta>(guardedValue, (value) => LocalDiskComputeBeta.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeAffinityLabels: (() { final guardedValue = map['nodeAffinityLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      nodeType: (() { final guardedValue = map['nodeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeTypeFlexibility: (() { final guardedValue = map['nodeTypeFlexibility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodeTemplateNodeTypeFlexibilityComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverBinding: (() { final guardedValue = map['serverBinding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerBindingComputeBeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

