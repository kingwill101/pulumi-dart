// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceGroupManagerNamedPort {
  /// The name of the port.
  final pulumi.Input<String> name;
  /// The port number.
  /// - - -
  final pulumi.Input<int> port;

  /// Creates a new [InstanceGroupManagerNamedPort].
  /// [name] The name of the port.
  /// [port] The port number.
  InstanceGroupManagerNamedPort({
    required this.name,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'port': port,
    };
  }

  factory InstanceGroupManagerNamedPort.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerNamedPort(
      name: (map['name'] as String).input(),
      port: (map['port'] as int).input(),
    );
  }
}

