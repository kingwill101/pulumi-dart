// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionInstanceGroupInstanceNamedPort {
  /// The name of the instance group.  One of `name` or `selfLink` must be provided.
  final pulumi.Input<String> name;
  /// Integer port number
  final pulumi.Input<int> port;

  /// Creates a new [GetRegionInstanceGroupInstanceNamedPort].
  /// [name] The name of the instance group.  One of `name` or `selfLink` must be provided.
  /// [port] Integer port number
  const GetRegionInstanceGroupInstanceNamedPort({
    required this.name,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'port': port,
    };
  }

  factory GetRegionInstanceGroupInstanceNamedPort.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceGroupInstanceNamedPort(
      name: pulumi.Input.fromValue(map['name'] as String),
      port: pulumi.Input.fromValue((map['port'] as num).toInt()),
    );
  }
}
