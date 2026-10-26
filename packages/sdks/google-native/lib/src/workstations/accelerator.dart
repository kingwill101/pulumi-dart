// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An accelerator card attached to the instance.
class Accelerator {
  /// Optional. Number of accelerator cards exposed to the instance.
  final pulumi.Input<int?>? count;
  /// Optional. Type of accelerator resource to attach to the instance, for example, `"nvidia-tesla-p100"`.
  final pulumi.Input<String?>? type;

  /// Creates a new [Accelerator].
  /// [count] Optional. Number of accelerator cards exposed to the instance.
  /// [type] Optional. Type of accelerator resource to attach to the instance, for example, `"nvidia-tesla-p100"`.
  const Accelerator({
    this.count,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'type': ?type,
    };
  }

  factory Accelerator.fromMap(Map<String, dynamic> map) {
    return Accelerator(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
