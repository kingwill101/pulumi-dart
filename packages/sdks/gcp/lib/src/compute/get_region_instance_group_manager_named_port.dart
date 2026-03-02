// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionInstanceGroupManagerNamedPort {
  /// The name of the instance group. Either `name` or `self_link` must be provided.
  final pulumi.Input<String> name;
  /// The port number.
  final pulumi.Input<int> port;

  /// Creates a new [GetRegionInstanceGroupManagerNamedPort].
  /// [name] The name of the instance group. Either `name` or `self_link` must be provided.
  /// [port] The port number.
  GetRegionInstanceGroupManagerNamedPort({
    required this.name,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'port': port,
    };
  }

  factory GetRegionInstanceGroupManagerNamedPort.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerNamedPort(
      name: (map['name'] as String).input(),
      port: (map['port'] as int).input(),
    );
  }
}

