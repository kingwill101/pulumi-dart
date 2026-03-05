// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_instance_group_named_port_instance_group_named_port_args_doc}
/// The set of arguments for InstanceGroupNamedPort.
/// {@endtemplate}
/// {@macro pulumi_compute_instance_group_named_port_instance_group_named_port_args_doc}
class InstanceGroupNamedPortArgs {
  /// The name of the instance group.
  final pulumi.Input<String> group;
  /// The name for this named port. The name must be 1-63 characters
  /// long, and comply with RFC1035.
  final pulumi.Input<String>? name;
  /// The port number, which can be a value between 1 and 65535.
  final pulumi.Input<int> port;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The zone of the instance group.
  final pulumi.Input<String>? zone;

  /// Creates a new [InstanceGroupNamedPortArgs].
  /// [group] The name of the instance group.
  /// [name] The name for this named port. The name must be 1-63 characters
  /// [port] The port number, which can be a value between 1 and 65535.
  /// [project] The ID of the project in which the resource belongs.
  /// [zone] The zone of the instance group.
  InstanceGroupNamedPortArgs({
    required this.group,
    this.name,
    required this.port,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': group,
      'name': ?name,
      'port': port,
      'project': ?project,
      'zone': ?zone,
    };
  }

  factory InstanceGroupNamedPortArgs.fromMap(Map<String, dynamic> map) {
    return InstanceGroupNamedPortArgs(
      group: pulumi.Input.fromValue(map['group'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: pulumi.Input.fromValue(map['port'] as int),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

