// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionInstanceGroupManagerNamedPort {
  /// The name of the port.
  final pulumi.Input<String> name;
  /// The port number.
  /// - - -
  final pulumi.Input<int> port;

  /// Creates a new [RegionInstanceGroupManagerNamedPort].
  /// [name] The name of the port.
  /// [port] The port number.
  const RegionInstanceGroupManagerNamedPort({
    required this.name,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'port': port,
    };
  }

  factory RegionInstanceGroupManagerNamedPort.fromMap(Map<String, dynamic> map) {
    return RegionInstanceGroupManagerNamedPort(
      name: pulumi.Input.fromValue(map['name'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
    );
  }
}
