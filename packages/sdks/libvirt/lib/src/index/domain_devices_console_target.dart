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
  DomainDevicesConsoleTarget({this.port, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'port': ?port, 'type': ?type};
  }

  factory DomainDevicesConsoleTarget.fromMap(Map<String, dynamic> map) {
    return DomainDevicesConsoleTarget(
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
