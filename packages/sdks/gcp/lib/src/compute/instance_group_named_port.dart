// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceGroupNamedPort {
  /// The name which the port will be mapped to.
  final pulumi.Input<String> name;
  /// The port number to map the name to.
  final pulumi.Input<int> port;

  /// Creates a new [InstanceGroupNamedPort].
  /// [name] The name which the port will be mapped to.
  /// [port] The port number to map the name to.
  InstanceGroupNamedPort({
    required this.name,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'port': port,
    };
  }

  factory InstanceGroupNamedPort.fromMap(Map<String, dynamic> map) {
    return InstanceGroupNamedPort(
      name: (map['name'] as String).input(),
      port: (map['port'] as int).input(),
    );
  }
}

