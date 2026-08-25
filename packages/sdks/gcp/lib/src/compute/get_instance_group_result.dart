// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_group_named_port.dart';

/// Result data returned by getInstanceGroup.
class GetInstanceGroupResult {
  final String? deletionPolicy;
  /// Textual description of the instance group.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// List of instances in the group.
  final List<String>? instances;
  final String? name;
  /// List of named ports in the group.
  final List<GetInstanceGroupNamedPort>? namedPorts;
  /// The URL of the network the instance group is in.
  final String? network;
  final String? project;
  /// The URI of the resource.
  final String? selfLink;
  /// The number of instances in the group.
  final int? size;
  final String? zone;

  /// Creates a new [GetInstanceGroupResult].
  /// [deletionPolicy] Optional.
  /// [description] Textual description of the instance group.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instances] List of instances in the group.
  /// [name] Optional.
  /// [namedPorts] List of named ports in the group.
  /// [network] The URL of the network the instance group is in.
  /// [project] Optional.
  /// [selfLink] The URI of the resource.
  /// [size] The number of instances in the group.
  /// [zone] Optional.
  const GetInstanceGroupResult({
    this.deletionPolicy,
    this.description,
    this.id,
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
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'id': ?id,
      'instances': ?instances,
      'name': ?name,
      'namedPorts': ?(() { final guardedValue = namedPorts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceGroupNamedPort, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'network': ?network,
      'project': ?project,
      'selfLink': ?selfLink,
      'size': ?size,
      'zone': ?zone,
    };
  }

  factory GetInstanceGroupResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupResult(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instances: (() { final guardedValue = map['instances']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namedPorts: (() { final guardedValue = map['namedPorts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceGroupNamedPort>(guardedValue, (value) => GetInstanceGroupNamedPort.fromMap((value as Map).cast<String, dynamic>())); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
