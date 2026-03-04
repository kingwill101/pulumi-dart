// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The named port. For example: &lt;"http", 80&gt;.
class NamedPort {
  /// The name for this named port. The name must be 1-63 characters long, and comply with RFC1035.
  final pulumi.Input<String>? name;

  /// The port number, which can be a value between 1 and 65535.
  final pulumi.Input<int>? port;

  /// Creates a new [NamedPort].
  /// [name] The name for this named port. The name must be 1-63 characters long, and comply with RFC1035.
  /// [port] The port number, which can be a value between 1 and 65535.
  NamedPort({this.name, this.port});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'port': ?port};
  }

  factory NamedPort.fromMap(Map<String, dynamic> map) {
    return NamedPort(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
