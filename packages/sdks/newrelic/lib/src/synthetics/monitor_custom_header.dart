// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MonitorCustomHeader {
  /// Header name.
  final pulumi.Input<String>? name;

  /// Header Value.
  final pulumi.Input<String>? value;

  /// Creates a new [MonitorCustomHeader].
  /// [name] Header name.
  /// [value] Header Value.
  MonitorCustomHeader({this.name, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'value': ?value};
  }

  factory MonitorCustomHeader.fromMap(Map<String, dynamic> map) {
    return MonitorCustomHeader(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
