// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceGroupsInstanceGroupNamedPort {
  /// The name of the instance group.
  final pulumi.Input<String> name;
  /// The port number.
  final pulumi.Input<int> port;

  /// Creates a new [GetInstanceGroupsInstanceGroupNamedPort].
  /// [name] The name of the instance group.
  /// [port] The port number.
  const GetInstanceGroupsInstanceGroupNamedPort({
    required this.name,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'port': port,
    };
  }

  factory GetInstanceGroupsInstanceGroupNamedPort.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupsInstanceGroupNamedPort(
      name: pulumi.Input.fromValue(map['name'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
    );
  }
}
