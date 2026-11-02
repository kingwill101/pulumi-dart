// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HyperdriveConfigCaching {
  final pulumi.Input<bool?>? disabled;
  final pulumi.Input<int?>? maxAge;
  final pulumi.Input<int?>? staleWhileRevalidate;

  /// Creates a new [HyperdriveConfigCaching].
  /// [disabled] Optional.
  /// [maxAge] Optional.
  /// [staleWhileRevalidate] Optional.
  const HyperdriveConfigCaching({
    this.disabled,
    this.maxAge,
    this.staleWhileRevalidate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'maxAge': ?maxAge,
      'staleWhileRevalidate': ?staleWhileRevalidate,
    };
  }

  factory HyperdriveConfigCaching.fromMap(Map<String, dynamic> map) {
    return HyperdriveConfigCaching(
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxAge: (() { final guardedValue = map['maxAge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      staleWhileRevalidate: (() { final guardedValue = map['staleWhileRevalidate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
