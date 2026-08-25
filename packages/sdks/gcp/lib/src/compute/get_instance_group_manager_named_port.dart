// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceGroupManagerNamedPort {
  /// The name of the instance group. Either `name` or `selfLink` must be provided.
  final pulumi.Input<String> name;
  /// The port number.
  final pulumi.Input<int> port;

  /// Creates a new [GetInstanceGroupManagerNamedPort].
  /// [name] The name of the instance group. Either `name` or `selfLink` must be provided.
  /// [port] The port number.
  const GetInstanceGroupManagerNamedPort({
    required this.name,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'port': port,
    };
  }

  factory GetInstanceGroupManagerNamedPort.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupManagerNamedPort(
      name: pulumi.Input.fromValue(map['name'] as String),
      port: pulumi.Input.fromValue((map['port'] as num).toInt()),
    );
  }
}
