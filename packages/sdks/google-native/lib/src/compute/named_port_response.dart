// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The named port. For example: &lt;"http", 80&gt;.
class NamedPortResponse {
  /// The name for this named port. The name must be 1-63 characters long, and comply with RFC1035.
  final pulumi.Input<String> name;

  /// The port number, which can be a value between 1 and 65535.
  final pulumi.Input<int> port;

  /// Creates a new [NamedPortResponse].
  /// [name] The name for this named port. The name must be 1-63 characters long, and comply with RFC1035.
  /// [port] The port number, which can be a value between 1 and 65535.
  NamedPortResponse({required this.name, required this.port});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'port': port};
  }

  factory NamedPortResponse.fromMap(Map<String, dynamic> map) {
    return NamedPortResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
    );
  }
}
