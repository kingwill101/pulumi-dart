// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The named port. For example: <"http", 80>.
class NamedPortComputeV1 {
  /// The name for this named port. The name must be 1-63 characters long, and comply with RFC1035.
  final pulumi.Input<String>? name;
  /// The port number, which can be a value between 1 and 65535.
  final pulumi.Input<int>? port;

  /// Creates a new [NamedPortComputeV1].
  /// [name] The name for this named port. The name must be 1-63 characters long, and comply with RFC1035.
  /// [port] The port number, which can be a value between 1 and 65535.
  NamedPortComputeV1({
    this.name,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'port': ?port,
    };
  }

  factory NamedPortComputeV1.fromMap(Map<String, dynamic> map) {
    return NamedPortComputeV1(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
    );
  }
}

