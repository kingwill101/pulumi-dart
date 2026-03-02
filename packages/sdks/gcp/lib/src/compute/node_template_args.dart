// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_template_accelerator.dart';
import 'node_template_disk.dart';
import 'node_template_node_type_flexibility.dart';
import 'node_template_server_binding.dart';

/// {@template pulumi_compute_node_template_node_template_args_doc}
/// The set of arguments for NodeTemplate.
/// {@endtemplate}
/// {@macro pulumi_compute_node_template_node_template_args_doc}
class NodeTemplateArgs {
  /// List of the type and count of accelerator cards attached to the
  /// node template
  /// Structure is documented below.
  final pulumi.Input<List<NodeTemplateAccelerator>>? accelerators;
  /// CPU overcommit.
  /// Default value is `NONE`.
  /// Possible values are: `ENABLED`, `NONE`.
  final pulumi.Input<String>? cpuOvercommitType;
  /// An optional textual description of the resource.
  final pulumi.Input<String>? description;
  /// List of the type, size and count of disks attached to the
  /// node template
  /// Structure is documented below.
  final pulumi.Input<List<NodeTemplateDisk>>? disks;
  /// Name of the resource.
  final pulumi.Input<String>? name;
  /// Labels to use for node affinity, which will be used in
  /// instance scheduling.
  final pulumi.Input<Map<String, String>>? nodeAffinityLabels;
  /// Node type to use for nodes group that are created from this template.
  /// Only one of nodeTypeFlexibility and nodeType can be specified.
  final pulumi.Input<String>? nodeType;
  /// Flexible properties for the desired node type. Node groups that
  /// use this node template will create nodes of a type that matches
  /// these properties. Only one of nodeTypeFlexibility and nodeType can
  /// be specified.
  /// Structure is documented below.
  final pulumi.Input<NodeTemplateNodeTypeFlexibility>? nodeTypeFlexibility;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Region where nodes using the node template will be created.
  /// If it is not provided, the provider region is used.
  final pulumi.Input<String>? region;
  /// The server binding policy for nodes using this template. Determines
  /// where the nodes should restart following a maintenance event.
  /// Structure is documented below.
  final pulumi.Input<NodeTemplateServerBinding>? serverBinding;

  /// Creates a new [NodeTemplateArgs].
  /// [accelerators] List of the type and count of accelerator cards attached to the
  /// [cpuOvercommitType] CPU overcommit.
  /// [description] An optional textual description of the resource.
  /// [disks] List of the type, size and count of disks attached to the
  /// [name] Name of the resource.
  /// [nodeAffinityLabels] Labels to use for node affinity, which will be used in
  /// [nodeType] Node type to use for nodes group that are created from this template.
  /// [nodeTypeFlexibility] Flexible properties for the desired node type. Node groups that
  /// [project] The ID of the project in which the resource belongs.
  /// [region] Region where nodes using the node template will be created.
  /// [serverBinding] The server binding policy for nodes using this template. Determines
  NodeTemplateArgs({
    this.accelerators,
    this.cpuOvercommitType,
    this.description,
    this.disks,
    this.name,
    this.nodeAffinityLabels,
    this.nodeType,
    this.nodeTypeFlexibility,
    this.project,
    this.region,
    this.serverBinding,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerators': ?pulumi.Input.mapOptionalInputValue<List<NodeTemplateAccelerator>, List<Map<String, dynamic>>>(accelerators, (value) => pulumi.Input.encodeList<NodeTemplateAccelerator, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cpuOvercommitType': ?cpuOvercommitType,
      'description': ?description,
      'disks': ?pulumi.Input.mapOptionalInputValue<List<NodeTemplateDisk>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<NodeTemplateDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'nodeAffinityLabels': ?nodeAffinityLabels,
      'nodeType': ?nodeType,
      'nodeTypeFlexibility': ?pulumi.Input.mapOptionalInputValue<NodeTemplateNodeTypeFlexibility, Map<String, dynamic>>(nodeTypeFlexibility, (value) => value.toMap()),
      'project': ?project,
      'region': ?region,
      'serverBinding': ?pulumi.Input.mapOptionalInputValue<NodeTemplateServerBinding, Map<String, dynamic>>(serverBinding, (value) => value.toMap()),
    };
  }

  factory NodeTemplateArgs.fromMap(Map<String, dynamic> map) {
    return NodeTemplateArgs(
      accelerators: map['accelerators'] == null ? null : (pulumi.Input.decodeList<NodeTemplateAccelerator>(map['accelerators']!, (value) => NodeTemplateAccelerator.fromMap((value as Map).cast<String, dynamic>()))).input(),
      cpuOvercommitType: map['cpuOvercommitType'] == null ? null : (map['cpuOvercommitType']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      disks: map['disks'] == null ? null : (pulumi.Input.decodeList<NodeTemplateDisk>(map['disks']!, (value) => NodeTemplateDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      nodeAffinityLabels: map['nodeAffinityLabels'] == null ? null : ((map['nodeAffinityLabels']! as Map).cast<String, String>()).input(),
      nodeType: map['nodeType'] == null ? null : (map['nodeType']! as String).input(),
      nodeTypeFlexibility: map['nodeTypeFlexibility'] == null ? null : (NodeTemplateNodeTypeFlexibility.fromMap((map['nodeTypeFlexibility']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      serverBinding: map['serverBinding'] == null ? null : (NodeTemplateServerBinding.fromMap((map['serverBinding']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

