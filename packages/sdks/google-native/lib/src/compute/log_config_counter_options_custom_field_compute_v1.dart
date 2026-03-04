// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This is deprecated and has no effect. Do not use.
class LogConfigCounterOptionsCustomFieldComputeV1 {
  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String>? name;

  /// This is deprecated and has no effect. Do not use.
  final pulumi.Input<String>? value;

  /// Creates a new [LogConfigCounterOptionsCustomFieldComputeV1].
  /// [name] This is deprecated and has no effect. Do not use.
  /// [value] This is deprecated and has no effect. Do not use.
  LogConfigCounterOptionsCustomFieldComputeV1({this.name, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'value': ?value};
  }

  factory LogConfigCounterOptionsCustomFieldComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return LogConfigCounterOptionsCustomFieldComputeV1(
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
