// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Counter describes a quantity associated with a device.
class CounterPatchResourceK8sIoV1beta2 {
  /// Value defines how much of a certain device counter is available.
  final pulumi.Input<String>? value;

  /// Creates a new [CounterPatchResourceK8sIoV1beta2].
  /// [value] Value defines how much of a certain device counter is available.
  CounterPatchResourceK8sIoV1beta2({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory CounterPatchResourceK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return CounterPatchResourceK8sIoV1beta2(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

