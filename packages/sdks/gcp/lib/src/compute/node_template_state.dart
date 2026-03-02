// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_template_accelerator.dart';
import 'node_template_disk.dart';
import 'node_template_node_type_flexibility.dart';
import 'node_template_server_binding.dart';

/// Input properties used for looking up and filtering NodeTemplate resources.
class NodeTemplateState {
  /// List of the type and count of accelerator cards attached to the
  /// node template
  /// Structure is documented below.
  final pulumi.Input<List<NodeTemplateAccelerator>>? accelerators;
  /// CPU overcommit.
  /// Default value is `NONE`.
  /// Possible values are: `ENABLED`, `NONE`.
  final pulumi.Input<String>? cpuOvercommitType;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
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
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// The server binding policy for nodes using this template. Determines
  /// where the nodes should restart following a maintenance event.
  /// Structure is documented below.
  final pulumi.Input<NodeTemplateServerBinding>? serverBinding;

  /// Creates a new [NodeTemplateState].
  /// [accelerators] List of the type and count of accelerator cards attached to the
  /// [cpuOvercommitType] CPU overcommit.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional textual description of the resource.
  /// [disks] List of the type, size and count of disks attached to the
  /// [name] Name of the resource.
  /// [nodeAffinityLabels] Labels to use for node affinity, which will be used in
  /// [nodeType] Node type to use for nodes group that are created from this template.
  /// [nodeTypeFlexibility] Flexible properties for the desired node type. Node groups that
  /// [project] The ID of the project in which the resource belongs.
  /// [region] Region where nodes using the node template will be created.
  /// [selfLink] The URI of the created resource.
  /// [serverBinding] The server binding policy for nodes using this template. Determines
  NodeTemplateState({
    this.accelerators,
    this.cpuOvercommitType,
    this.creationTimestamp,
    this.description,
    this.disks,
    this.name,
    this.nodeAffinityLabels,
    this.nodeType,
    this.nodeTypeFlexibility,
    this.project,
    this.region,
    this.selfLink,
    this.serverBinding,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerators': ?pulumi.Input.mapOptionalInputValue<List<NodeTemplateAccelerator>, List<Map<String, dynamic>>>(accelerators, (value) => pulumi.Input.encodeList<NodeTemplateAccelerator, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cpuOvercommitType': ?cpuOvercommitType,
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'disks': ?pulumi.Input.mapOptionalInputValue<List<NodeTemplateDisk>, List<Map<String, dynamic>>>(disks, (value) => pulumi.Input.encodeList<NodeTemplateDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'nodeAffinityLabels': ?nodeAffinityLabels,
      'nodeType': ?nodeType,
      'nodeTypeFlexibility': ?pulumi.Input.mapOptionalInputValue<NodeTemplateNodeTypeFlexibility, Map<String, dynamic>>(nodeTypeFlexibility, (value) => value.toMap()),
      'project': ?project,
      'region': ?region,
      'selfLink': ?selfLink,
      'serverBinding': ?pulumi.Input.mapOptionalInputValue<NodeTemplateServerBinding, Map<String, dynamic>>(serverBinding, (value) => value.toMap()),
    };
  }

  factory NodeTemplateState.fromMap(Map<String, dynamic> map) {
    return NodeTemplateState(
      accelerators: map['accelerators'] == null ? null : (pulumi.Input.decodeList<NodeTemplateAccelerator>(map['accelerators']!, (value) => NodeTemplateAccelerator.fromMap((value as Map).cast<String, dynamic>()))).input(),
      cpuOvercommitType: map['cpuOvercommitType'] == null ? null : (map['cpuOvercommitType']! as String).input(),
      creationTimestamp: map['creationTimestamp'] == null ? null : (map['creationTimestamp']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      disks: map['disks'] == null ? null : (pulumi.Input.decodeList<NodeTemplateDisk>(map['disks']!, (value) => NodeTemplateDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      nodeAffinityLabels: map['nodeAffinityLabels'] == null ? null : ((map['nodeAffinityLabels']! as Map).cast<String, String>()).input(),
      nodeType: map['nodeType'] == null ? null : (map['nodeType']! as String).input(),
      nodeTypeFlexibility: map['nodeTypeFlexibility'] == null ? null : (NodeTemplateNodeTypeFlexibility.fromMap((map['nodeTypeFlexibility']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink']! as String).input(),
      serverBinding: map['serverBinding'] == null ? null : (NodeTemplateServerBinding.fromMap((map['serverBinding']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

