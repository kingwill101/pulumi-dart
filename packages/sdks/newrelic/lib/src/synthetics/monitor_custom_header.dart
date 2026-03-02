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
  MonitorCustomHeader({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory MonitorCustomHeader.fromMap(Map<String, dynamic> map) {
    return MonitorCustomHeader(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

