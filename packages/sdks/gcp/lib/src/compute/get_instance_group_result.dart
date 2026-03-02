// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_group_named_port.dart';

/// Result data returned by getInstanceGroup.
class GetInstanceGroupResult {
  /// Textual description of the instance group.
  final String description;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// List of instances in the group.
  final List<String> instances;
  final String? name;
  /// List of named ports in the group.
  final List<GetInstanceGroupNamedPort> namedPorts;
  /// The URL of the network the instance group is in.
  final String network;
  final String project;
  /// The URI of the resource.
  final String selfLink;
  /// The number of instances in the group.
  final int size;
  final String zone;

  /// Creates a new [GetInstanceGroupResult].
  /// [description] Textual description of the instance group.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instances] List of instances in the group.
  /// [name] Optional.
  /// [namedPorts] List of named ports in the group.
  /// [network] The URL of the network the instance group is in.
  /// [project] Required.
  /// [selfLink] The URI of the resource.
  /// [size] The number of instances in the group.
  /// [zone] Required.
  GetInstanceGroupResult({
    required this.description,
    required this.id,
    required this.instances,
    this.name,
    required this.namedPorts,
    required this.network,
    required this.project,
    required this.selfLink,
    required this.size,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'id': id,
      'instances': instances,
      'name': ?name,
      'namedPorts': pulumi.Input.encodeList<GetInstanceGroupNamedPort, Map<String, dynamic>>(namedPorts, (value) => value.toMap()),
      'network': network,
      'project': project,
      'selfLink': selfLink,
      'size': size,
      'zone': zone,
    };
  }

  factory GetInstanceGroupResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupResult(
      description: map['description'] as String,
      id: map['id'] as String,
      instances: (map['instances'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name']! as String,
      namedPorts: pulumi.Input.decodeList<GetInstanceGroupNamedPort>(map['namedPorts'], (value) => GetInstanceGroupNamedPort.fromMap((value as Map).cast<String, dynamic>())),
      network: map['network'] as String,
      project: map['project'] as String,
      selfLink: map['selfLink'] as String,
      size: map['size'] as int,
      zone: map['zone'] as String,
    );
  }
}

