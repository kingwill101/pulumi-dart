// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceGroupNamedPort {
  /// The name of the instance group. Either `name` or `self_link` must be provided.
  final pulumi.Input<String> name;
  final pulumi.Input<int> port;

  /// Creates a new [GetInstanceGroupNamedPort].
  /// [name] The name of the instance group. Either `name` or `self_link` must be provided.
  /// [port] Required.
  GetInstanceGroupNamedPort({required this.name, required this.port});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'port': port};
  }

  factory GetInstanceGroupNamedPort.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupNamedPort(
      name: pulumi.Input.fromValue(map['name'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
    );
  }
}
