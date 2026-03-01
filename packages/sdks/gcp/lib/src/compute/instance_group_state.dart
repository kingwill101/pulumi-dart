// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_group_named_port.dart';

/// Input properties used for looking up and filtering InstanceGroup resources.
class InstanceGroupState {
  /// An optional textual description of the instance
  /// group.
  final pulumi.Input<String>? description;
  /// The list of instances in the group, in `self_link` format.
  /// When adding instances they must all be in the same network and zone as the instance group.
  final pulumi.Input<List<String>>? instances;
  /// The name of the instance group. Must be 1-63
  /// characters long and comply with
  /// [RFC1035](https://www.ietf.org/rfc/rfc1035.txt). Supported characters
  /// include lowercase letters, numbers, and hyphens.
  final pulumi.Input<String>? name;
  /// The named port configuration. See the section below
  /// for details on configuration. Structure is documented below.
  final pulumi.Input<List<InstanceGroupNamedPort>>? namedPorts;
  /// The URL of the network the instance group is in. If
  /// this is different from the network where the instances are in, the creation
  /// fails. Defaults to the network where the instances are in (if neither
  /// `network` nor `instances` is specified, this field will be blank).
  final pulumi.Input<String>? network;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// The number of instances in the group.
  final pulumi.Input<int>? size;
  /// The zone that this instance group should be created in.
  ///
  /// - - -
  final pulumi.Input<String>? zone;

  /// Creates a new [InstanceGroupState].
  /// [description] An optional textual description of the instance
  /// [instances] The list of instances in the group, in `self_link` format.
  /// [name] The name of the instance group. Must be 1-63
  /// [namedPorts] The named port configuration. See the section below
  /// [network] The URL of the network the instance group is in. If
  /// [project] The ID of the project in which the resource belongs. If it
  /// [selfLink] The URI of the created resource.
  /// [size] The number of instances in the group.
  /// [zone] The zone that this instance group should be created in.
  InstanceGroupState({
    pulumi.Output<String>? description,
    pulumi.Output<List<String>>? instances,
    pulumi.Output<String>? name,
    pulumi.Output<List<InstanceGroupNamedPort>>? namedPorts,
    pulumi.Output<String>? network,
    pulumi.Output<String>? project,
    pulumi.Output<String>? selfLink,
    pulumi.Output<int>? size,
    pulumi.Output<String>? zone,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      instances = pulumi.Input.asOptionalInput<List<String>>(instances),
      name = pulumi.Input.asOptionalInput<String>(name),
      namedPorts = pulumi.Input.asOptionalInput<List<InstanceGroupNamedPort>>(namedPorts),
      network = pulumi.Input.asOptionalInput<String>(network),
      project = pulumi.Input.asOptionalInput<String>(project),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      size = pulumi.Input.asOptionalInput<int>(size),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'instances': ?instances,
      'name': ?name,
      'namedPorts': ?pulumi.Input.mapOptionalInputValue<List<InstanceGroupNamedPort>, List<Map<String, dynamic>>>(namedPorts, (value) => pulumi.Input.encodeList<InstanceGroupNamedPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'network': ?network,
      'project': ?project,
      'selfLink': ?selfLink,
      'size': ?size,
      'zone': ?zone,
    };
  }

  factory InstanceGroupState.fromMap(Map<String, dynamic> map) {
    return InstanceGroupState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      instances: map['instances'] == null ? null : pulumi.Output.create<List<String>>((map['instances'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namedPorts: map['namedPorts'] == null ? null : pulumi.Output.create<List<InstanceGroupNamedPort>>(pulumi.Input.decodeList<InstanceGroupNamedPort>(map['namedPorts'], (value) => InstanceGroupNamedPort.fromMap((value as Map).cast<String, dynamic>()))),
      network: map['network'] == null ? null : pulumi.Output.create<String>(map['network'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      size: map['size'] == null ? null : pulumi.Output.create<int>(map['size'] as int),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

