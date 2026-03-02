// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesConsoleTarget {
  /// Sets the port number used for the console target.
  final pulumi.Input<double>? port;
  /// Specifies the type of the console target.
  final pulumi.Input<String>? type;

  /// Creates a new [DomainDevicesConsoleTarget].
  /// [port] Sets the port number used for the console target.
  /// [type] Specifies the type of the console target.
  DomainDevicesConsoleTarget({
    this.port,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'type': ?type,
    };
  }

  factory DomainDevicesConsoleTarget.fromMap(Map<String, dynamic> map) {
    return DomainDevicesConsoleTarget(
      port: map['port'] == null ? null : (map['port'] as double).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

