// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesRngRate {
  /// Sets the rate of bytes per time unit for the random number generator.
  final pulumi.Input<double> bytes;
  /// Defines the period duration for the rate settings of the random number generator.
  final pulumi.Input<double>? period;

  /// Creates a new [DomainDevicesRngRate].
  /// [bytes] Sets the rate of bytes per time unit for the random number generator.
  /// [period] Defines the period duration for the rate settings of the random number generator.
  const DomainDevicesRngRate({
    required this.bytes,
    this.period,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bytes': bytes,
      'period': ?period,
    };
  }

  factory DomainDevicesRngRate.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRngRate(
      bytes: pulumi.Input.fromValue(map['bytes'] as double),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

