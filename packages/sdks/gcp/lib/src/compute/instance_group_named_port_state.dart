// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InstanceGroupNamedPort resources.
class InstanceGroupNamedPortState {
  /// The name of the instance group.
  final pulumi.Input<String>? group;
  /// The name for this named port. The name must be 1-63 characters
  /// long, and comply with RFC1035.
  final pulumi.Input<String>? name;
  /// The port number, which can be a value between 1 and 65535.
  final pulumi.Input<int>? port;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The zone of the instance group.
  final pulumi.Input<String>? zone;

  /// Creates a new [InstanceGroupNamedPortState].
  /// [group] The name of the instance group.
  /// [name] The name for this named port. The name must be 1-63 characters
  /// [port] The port number, which can be a value between 1 and 65535.
  /// [project] The ID of the project in which the resource belongs.
  /// [zone] The zone of the instance group.
  InstanceGroupNamedPortState({
    this.group,
    this.name,
    this.port,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': ?group,
      'name': ?name,
      'port': ?port,
      'project': ?project,
      'zone': ?zone,
    };
  }

  factory InstanceGroupNamedPortState.fromMap(Map<String, dynamic> map) {
    return InstanceGroupNamedPortState(
      group: map['group'] == null ? null : (map['group']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      zone: map['zone'] == null ? null : (map['zone']! as String).input(),
    );
  }
}

