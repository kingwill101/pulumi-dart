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
    pulumi.Output<List<NodeTemplateAccelerator>>? accelerators,
    pulumi.Output<String>? cpuOvercommitType,
    pulumi.Output<String>? creationTimestamp,
    pulumi.Output<String>? description,
    pulumi.Output<List<NodeTemplateDisk>>? disks,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? nodeAffinityLabels,
    pulumi.Output<String>? nodeType,
    pulumi.Output<NodeTemplateNodeTypeFlexibility>? nodeTypeFlexibility,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<String>? selfLink,
    pulumi.Output<NodeTemplateServerBinding>? serverBinding,
  }) :
      accelerators = pulumi.Input.asOptionalInput<List<NodeTemplateAccelerator>>(accelerators),
      cpuOvercommitType = pulumi.Input.asOptionalInput<String>(cpuOvercommitType),
      creationTimestamp = pulumi.Input.asOptionalInput<String>(creationTimestamp),
      description = pulumi.Input.asOptionalInput<String>(description),
      disks = pulumi.Input.asOptionalInput<List<NodeTemplateDisk>>(disks),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodeAffinityLabels = pulumi.Input.asOptionalInput<Map<String, String>>(nodeAffinityLabels),
      nodeType = pulumi.Input.asOptionalInput<String>(nodeType),
      nodeTypeFlexibility = pulumi.Input.asOptionalInput<NodeTemplateNodeTypeFlexibility>(nodeTypeFlexibility),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      serverBinding = pulumi.Input.asOptionalInput<NodeTemplateServerBinding>(serverBinding);

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
      accelerators: map['accelerators'] == null ? null : pulumi.Output.create<List<NodeTemplateAccelerator>>(pulumi.Input.decodeList<NodeTemplateAccelerator>(map['accelerators'], (value) => NodeTemplateAccelerator.fromMap((value as Map).cast<String, dynamic>()))),
      cpuOvercommitType: map['cpuOvercommitType'] == null ? null : pulumi.Output.create<String>(map['cpuOvercommitType'] as String),
      creationTimestamp: map['creationTimestamp'] == null ? null : pulumi.Output.create<String>(map['creationTimestamp'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      disks: map['disks'] == null ? null : pulumi.Output.create<List<NodeTemplateDisk>>(pulumi.Input.decodeList<NodeTemplateDisk>(map['disks'], (value) => NodeTemplateDisk.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nodeAffinityLabels: map['nodeAffinityLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['nodeAffinityLabels'] as Map).cast<String, String>()),
      nodeType: map['nodeType'] == null ? null : pulumi.Output.create<String>(map['nodeType'] as String),
      nodeTypeFlexibility: map['nodeTypeFlexibility'] == null ? null : pulumi.Output.create<NodeTemplateNodeTypeFlexibility>(NodeTemplateNodeTypeFlexibility.fromMap((map['nodeTypeFlexibility'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      serverBinding: map['serverBinding'] == null ? null : pulumi.Output.create<NodeTemplateServerBinding>(NodeTemplateServerBinding.fromMap((map['serverBinding'] as Map).cast<String, dynamic>())),
    );
  }
}

