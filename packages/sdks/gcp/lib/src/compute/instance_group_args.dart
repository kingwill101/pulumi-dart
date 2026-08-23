// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_group_named_port.dart';

/// {@template pulumi_compute_instance_group_instance_group_args_doc}
/// The set of arguments for InstanceGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_instance_group_instance_group_args_doc}
class InstanceGroupArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// An optional textual description of the instance
  /// group.
  final pulumi.Input<String>? description;
  /// The list of instances in the group, in `selfLink` format.
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
  /// The zone that this instance group should be created in.
  ///
  /// - - -
  final pulumi.Input<String>? zone;

  /// Creates a new [InstanceGroupArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [description] An optional textual description of the instance
  /// [instances] The list of instances in the group, in `selfLink` format.
  /// [name] The name of the instance group. Must be 1-63
  /// [namedPorts] The named port configuration. See the section below
  /// [network] The URL of the network the instance group is in. If
  /// [project] The ID of the project in which the resource belongs. If it
  /// [zone] The zone that this instance group should be created in.
  const InstanceGroupArgs({
    this.deletionPolicy,
    this.description,
    this.instances,
    this.name,
    this.namedPorts,
    this.network,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'instances': ?instances,
      'name': ?name,
      'namedPorts': ?pulumi.Input.mapOptionalInputValue<List<InstanceGroupNamedPort>, List<Map<String, dynamic>>>(namedPorts, (value) => pulumi.Input.encodeList<InstanceGroupNamedPort, Map<String, dynamic>>(value, (value) => value.toMap())),
      'network': ?network,
      'project': ?project,
      'zone': ?zone,
    };
  }

  factory InstanceGroupArgs.fromMap(Map<String, dynamic> map) {
    return InstanceGroupArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instances: (() { final guardedValue = map['instances']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namedPorts: (() { final guardedValue = map['namedPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceGroupNamedPort>(guardedValue, (value) => InstanceGroupNamedPort.fromMap((value as Map).cast<String, dynamic>()))); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
