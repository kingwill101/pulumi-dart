// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Counter describes a quantity associated with a device.
class CounterPatch {
  /// Value defines how much of a certain device counter is available.
  final pulumi.Input<String>? value;

  /// Creates a new [CounterPatch].
  /// [value] Value defines how much of a certain device counter is available.
  CounterPatch({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory CounterPatch.fromMap(Map<String, dynamic> map) {
    return CounterPatch(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
