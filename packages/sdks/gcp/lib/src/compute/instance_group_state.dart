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
    this.description,
    this.instances,
    this.name,
    this.namedPorts,
    this.network,
    this.project,
    this.selfLink,
    this.size,
    this.zone,
  });

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
      description: map['description'] == null ? null : (map['description']! as String).input(),
      instances: map['instances'] == null ? null : ((map['instances']! as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      namedPorts: map['namedPorts'] == null ? null : (pulumi.Input.decodeList<InstanceGroupNamedPort>(map['namedPorts']!, (value) => InstanceGroupNamedPort.fromMap((value as Map).cast<String, dynamic>()))).input(),
      network: map['network'] == null ? null : (map['network']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink']! as String).input(),
      size: map['size'] == null ? null : (map['size']! as int).input(),
      zone: map['zone'] == null ? null : (map['zone']! as String).input(),
    );
  }
}

